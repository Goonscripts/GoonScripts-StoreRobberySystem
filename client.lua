ESX = nil
local PlayerData = {}

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

local dict                              = GoonScripts.DictAnim
local animname                          = GoonScripts.AnimName
local maxdistance                       = GoonScripts.MaxDistance

local hidewindow                        = false
local Hidemarker                        = false

local StoreRobberyStartedv1             = false
local isinStoreRobberyzonev1            = false


local StoreRobberycoordv1               = vector3(-43.369682312012,-1748.3776855469,29.42102432251)


----- Drug2 v1 -----

Citizen.CreateThread(function()
  while true do
    Wait(0)

    ----- Store Robbery v1 -----


    StoreRobberydistv1          = #(StoreRobberycoordv1 - GetEntityCoords(GetPlayerPed(-1))) -- Use Z

    if StoreRobberydistv1 <= maxdistance then
      isinStoreRobberyzonev1 = true
    else
      isinStoreRobberyzonev1 = false
    end

    if isinStoreRobberyzonev1 and not StoreRobberyStartedv1 and not Hidemarker then
      DrawMarker(1, StoreRobberycoordv1, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
    end
  end
end)

----- Button System -----

RegisterCommand("StoreRobberyCommand", function()

  if isinStoreRobberyzonev1 then
    CheckIfSafeIsCrackedv1()
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
    PoliceNotificationSystemv1()
  end
end) 

RegisterKeyMapping('StoreRobberyCommand', 'GoonScripts Store Robbery System', 'keyboard', 'E')


  ----- Checks if Store is robbed or not -----

CheckIfSafeIsCrackedv1 = function()
  TriggerServerEvent('GoonScripts-StoreRobberySystem:IsStoreRobbedCheckv1')
end

RegisterNetEvent('GoonScripts-StoreRobberySystem:StoreCanBeRobbedv1')
AddEventHandler('GoonScripts-StoreRobberySystem:StoreCanBeRobbedv1', function()
  exports['mythic_notify']:DoHudText('success', _U('StoreCanBeRobbedText'))
  print("Trigged Robbery Part 1 v1 Successful")
  StartBreakingIntoSafev1()
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:StoreCantBeRobbedv1')
AddEventHandler('GoonScripts-StoreRobberySystem:StoreCantBeRobbedv1', function()
  exports['mythic_notify']:DoHudText('inform', _U('StoreCantBeRobbedText'))
  print("Trigged Robbery Part 1 v1 Failed")
  StoreRobberyStartedv1 = false
end)

  ----- Breaks into Safe -----

StartBreakingIntoSafev1 = function()
  exports['mythic_notify']:DoHudText('success', _U('StartBreakingIntoSafeText'))
  TaskPlayAnim(GetPlayerPed(-1), dict, animname, 8.0, 8.0, -1, 50, 0, false, false, false)
  TriggerServerEvent('GoonScripts-StoreRobberySystem:SafeCrackingStartedv1')
end


----- Hide or Show marker -----

RegisterNetEvent('GoonScripts-StoreRobberySystem:HideMarkedTrue')
AddEventHandler('GoonScripts-StoreRobberySystem:HideMarkedTrue', function()
  Hidemarker = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:HideMarkedFalse')
AddEventHandler('GoonScripts-StoreRobberySystem:HideMarkedFalse', function()
  Hidemarker = false
end)


  -------------------------------------------- 

PoliceNotificationSystemv1 = function()
  SetNewWaypoint(StoreRobberycoordv1)
end