ESX = nil
local PlayerData = {}

local Keys = {["E"] = 38}

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

--local blipcoords                        = {StoreRobberycoordv1, StoreRobberycoordv2}

Anim                              = GoonScripts.SafeCrackingAnimation
Dict                              = GoonScripts.SafeCrackingDictionary
maxdistance                       = GoonScripts.MaxDistance

PoliceNotify                      = false

Hidemarker                        = false

isinStoreRobberyzonev1            = false
StoreRobberycoordv1               = vector3(-43.369682312012,-1748.3776855469,29.42102432251)
v1                                = false

isinStoreRobberyzonev2            = false
StoreRobberycoordv2               = vector3(28.087013244629,-1339.1442871094,29.497018814087)
v2                                = false

PoliceTriggerNotify = false

----- Drug2 v1 -----

Citizen.CreateThread(function()
  while true do
    Wait(0)

    local player = GetPlayerPed(-1)

    ----- Store Robbery v1 -----


    StoreRobberydistv1          = #(StoreRobberycoordv1 - GetEntityCoords(player)) -- Use Z

    if StoreRobberydistv1 <= maxdistance then
      isinStoreRobberyzonev1 = true
    else
      isinStoreRobberyzonev1 = false
    end

    if isinStoreRobberyzonev1 and not Hidemarker then
      DrawMarker(1, StoreRobberycoordv1, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
    end

    ----- Store Robbery v2 -----


    StoreRobberydistv2          = #(StoreRobberycoordv2 - GetEntityCoords(player)) -- Use Z

    if StoreRobberydistv2 <= maxdistance then
      isinStoreRobberyzonev2 = true
    else
      isinStoreRobberyzonev2 = false
    end

    if isinStoreRobberyzonev2 and not Hidemarker then
      DrawMarker(1, StoreRobberycoordv2, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
    end

    if PlayerData.job ~= nil and PlayerData.job.name == 'police' and PoliceTriggerNotify then
      textfunc()
    end
  end
end)

textfunc = function()
  ESX.ShowNotification(_U('NotifyPolice'), yes, yes, u)
end

----- Button System -----

RegisterCommand("StoreRobberyCommand", function()

  if isinStoreRobberyzonev1 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v1trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev2 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v2trigger')
    CheckIfSafeIsCracked()
  end



  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v1 then
    SetNewWaypoint(StoreRobberycoordv1)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v2 then
    SetNewWaypoint(StoreRobberycoordv2)
  end


end) 

RegisterKeyMapping('StoreRobberyCommand', 'GoonScripts Store Robbery System', 'keyboard', 'E')


  ----- Checks if Store is robbed or not v1 -----

CheckIfSafeIsCracked = function()
  TriggerServerEvent('GoonScripts-StoreRobberySystem:IsStoreRobbedCheck')
end

RegisterNetEvent('GoonScripts-StoreRobberySystem:StoreCanBeRobbed')
AddEventHandler('GoonScripts-StoreRobberySystem:StoreCanBeRobbed', function()
  exports['mythic_notify']:DoHudText('success', _U('StoreCanBeRobbedText'))
  print("Trigged Robbery Successful")
  StartBreakingIntoSafe()
  PoliceNotify = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:StoreCantBeRobbed')
AddEventHandler('GoonScripts-StoreRobberySystem:StoreCantBeRobbed', function()
  exports['mythic_notify']:DoHudText('inform', _U('StoreCantBeRobbedText'))
  print("Trigged Robbery Failed")
  v1 = false
  v2 = false
  PoliceNotify = false
  PoliceTriggerNotify = false
end)

  ----- Breaks into Safe v1 -----

StartBreakingIntoSafe = function()
  exports['mythic_notify']:DoHudText('success', _U('StartBreakingIntoSafeText'))
  RequestAnimDict('amb@world_human_bum_wash@male@low@idle_a')
      while not HasAnimDictLoaded('amb@world_human_bum_wash@male@low@idle_a') do
        Citizen.Wait(0)
            end 
            TaskPlayAnim(GetPlayerPed(-1), 'amb@world_human_bum_wash@male@low@idle_a' ,'idle_a' ,8.0, -8.0, -1, 1, 0, true, true, true )
  TriggerServerEvent('GoonScripts-StoreRobberySystem:SafeCrackingStarted')
end

----- Hide or Show marker -----

RegisterNetEvent('GoonScripts-StoreRobberySystem:HideMarkedTrue')
AddEventHandler('GoonScripts-StoreRobberySystem:HideMarkedTrue', function()
  Hidemarker = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:HideMarkedFalse')
AddEventHandler('GoonScripts-StoreRobberySystem:HideMarkedFalse', function()
  Hidemarker = false
  ClearPedTasksImmediately(GetPlayerPed(-1))
  v1 = false
  v2 = false
  PoliceNotify = false
  PoliceTriggerNotify = false
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:NotifyPolicefunc')
AddEventHandler('GoonScripts-StoreRobberySystem:NotifyPolicefunc', function()
  PoliceTriggerNotify = true
end)

  ----- Police Notification System -----

RegisterNetEvent('GoonScripts-StoreRobberySystem:TriggerdV1')
AddEventHandler('GoonScripts-StoreRobberySystem:TriggerdV1', function()
  v1 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:TriggerdV2')
AddEventHandler('GoonScripts-StoreRobberySystem:TriggerdV2', function()
  v2 = true
end)

PoliceNotificationSystemv1 = function()
  SetNewWaypoint(StoreRobberycoordv1)
end

PoliceNotificationSystemv2 = function()
  SetNewWaypoint(StoreRobberycoordv2)
end

  --[[----- Blip System -----

Citizen.CreateThread(function()
  local blip = AddBlipForCoord(StoreRobberycoordv1.x, StoreRobberycoordv1.y, StoreRobberycoordv1.z)

  SetBlipSprite(blip, 351)
  SetBlipDisplay(blip, 3)
  SetBlipScale(blip, 1.0)
  SetBlipColour(blip, 78)

  BeginTextCommandSetBlipName("STRING")
  AddTextComponentString(_U('StoreRobberyBlipText'))
  EndTextCommandSetBlipName(blip)
end)]]--
