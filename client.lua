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

----- Trigger Points and Locations -----

Anim                              = GoonScripts.SafeCrackingAnimation
Dict                              = GoonScripts.SafeCrackingDictionary
maxdistance                       = GoonScripts.MaxDistance
Hidemarker                        = false
PoliceTriggerNotify = false

isinStoreRobberyzonev1            = false
StoreRobberycoordv1               = vector3(-43.369682312012,-1748.3776855469,29.42102432251)
v1                                = false

isinStoreRobberyzonev2            = false
StoreRobberycoordv2               = vector3(28.087013244629,-1339.1442871094,29.497018814087)
v2                                = false

isinStoreRobberyzonev3            = false
StoreRobberycoordv3               = vector3(-709.66583251953,-904.03637695313,19.215589523315)
v3                                = false

isinStoreRobberyzonev4            = false
StoreRobberycoordv4               = vector3(-1220.7856445313,-916.00708007813,11.326335906982)
v4                                = false

isinStoreRobberyzonev5            = false
StoreRobberycoordv5               = vector3(1126.9991455078,-980.07147216797,45.416633605957)
v5                                = false

isinStoreRobberyzonev6            = false
StoreRobberycoordv6               = vector3(1159.5628662109,-314.05648803711,69.205062866211)
v6                                = false

isinStoreRobberyzonev7            = false
StoreRobberycoordv7               = vector3(378.28628540039,333.31213378906,103.56636810303)
v7                                = false

isinStoreRobberyzonev8            = false
StoreRobberycoordv8               = vector3(-1479.0067138672,-375.49795532227,39.163898468018)
v8                                = false

isinStoreRobberyzonev9            = false
StoreRobberycoordv9               = vector3(-1829.2281494141,798.87591552734,138.1907043457)
v9                                = false

isinStoreRobberyzonev10           = false
StoreRobberycoordv10              = vector3(-2959.73828125,387.16213989258,14.043303489685)
v10                               = false

isinStoreRobberyzonev11            = false
StoreRobberycoordv11               = vector3(-3047.7900390625,585.59393310547,7.9089279174805)
v11                                = false

isinStoreRobberyzonev12            = false
StoreRobberycoordv12               = vector3(-3249.9848632813,1004.5341796875,12.830708503723)
v12                                = false

isinStoreRobberyzonev13            = false
StoreRobberycoordv13               = vector3(546.36389160156,2662.8454589844,42.156497955322)
v13                                = false

isinStoreRobberyzonev14            = false
StoreRobberycoordv14               = vector3(1169.2879638672,2717.5942382813,37.158462524414)
v14                                = false

isinStoreRobberyzonev15            = false
StoreRobberycoordv15               = vector3(2672.861328125,3286.7255859375,55.241149902344)
v15                                = false

isinStoreRobberyzonev16            = false
StoreRobberycoordv16               = vector3(1959.4259033203,3748.9252929688,32.343746185303)
v16                                = false

isinStoreRobberyzonev17            = false
StoreRobberycoordv17               = vector3(1394.9504394531,3613.908203125,34.980903625488)
v17                                = false

isinStoreRobberyzonev18            = false
StoreRobberycoordv18               = vector3(1707.9471435547,4920.3344726563,42.063655853271)
v18                                = false

isinStoreRobberyzonev19            = false
StoreRobberycoordv19               = vector3(1734.8780517578,6420.7534179688,35.037242889404)
v19                                = false

----- Store Robbery Thread -----

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

    ----- Store Robbery v3 -----


    StoreRobberydistv3          = #(StoreRobberycoordv3 - GetEntityCoords(player)) -- Use Z

    if StoreRobberydistv3 <= maxdistance then
      isinStoreRobberyzonev3 = true
    else
      isinStoreRobberyzonev3 = false
    end

    if isinStoreRobberyzonev3 and not Hidemarker then
      DrawMarker(1, StoreRobberycoordv3, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
    end

    ----- Store Robbery v4 -----


    StoreRobberydistv4          = #(StoreRobberycoordv4 - GetEntityCoords(player)) -- Use Z

    if StoreRobberydistv4 <= maxdistance then
      isinStoreRobberyzonev4 = true
    else
      isinStoreRobberyzonev4 = false
    end

    if isinStoreRobberyzonev4 and not Hidemarker then
      DrawMarker(1, StoreRobberycoordv4, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
    end

    ----- Store Robbery v5 -----


    StoreRobberydistv5          = #(StoreRobberycoordv5 - GetEntityCoords(player)) -- Use Z

    if StoreRobberydistv5 <= maxdistance then
      isinStoreRobberyzonev5 = true
    else
      isinStoreRobberyzonev5 = false
    end

    if isinStoreRobberyzonev5 and not Hidemarker then
      DrawMarker(1, StoreRobberycoordv5, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
    end

     ----- Store Robbery v6 -----


     StoreRobberydistv6          = #(StoreRobberycoordv6 - GetEntityCoords(player)) -- Use Z

     if StoreRobberydistv6 <= maxdistance then
       isinStoreRobberyzonev6 = true
     else
       isinStoreRobberyzonev6 = false
     end
 
     if isinStoreRobberyzonev6 and not Hidemarker then
       DrawMarker(1, StoreRobberycoordv6, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
     end
 
     ----- Store Robbery v7 -----
 
 
     StoreRobberydistv7          = #(StoreRobberycoordv7 - GetEntityCoords(player)) -- Use Z
 
     if StoreRobberydistv7 <= maxdistance then
       isinStoreRobberyzonev7 = true
     else
       isinStoreRobberyzonev7 = false
     end
 
     if isinStoreRobberyzonev7 and not Hidemarker then
       DrawMarker(1, StoreRobberycoordv7, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
     end
 
     ----- Store Robbery v8 -----
 
 
     StoreRobberydistv8          = #(StoreRobberycoordv8 - GetEntityCoords(player)) -- Use Z
 
     if StoreRobberydistv8 <= maxdistance then
       isinStoreRobberyzonev8 = true
     else
       isinStoreRobberyzonev8 = false
     end
 
     if isinStoreRobberyzonev8 and not Hidemarker then
       DrawMarker(1, StoreRobberycoordv8, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
     end
 
     ----- Store Robbery v9 -----
 
 
     StoreRobberydistv9          = #(StoreRobberycoordv9 - GetEntityCoords(player)) -- Use Z
 
     if StoreRobberydistv9 <= maxdistance then
       isinStoreRobberyzonev9 = true
     else
       isinStoreRobberyzonev9 = false
     end
 
     if isinStoreRobberyzonev9 and not Hidemarker then
       DrawMarker(1, StoreRobberycoordv9, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
     end
 
     ----- Store Robbery v10 -----
 
 
     StoreRobberydistv10          = #(StoreRobberycoordv10 - GetEntityCoords(player)) -- Use Z
 
     if StoreRobberydistv10 <= maxdistance then
       isinStoreRobberyzonev10 = true
     else
       isinStoreRobberyzonev10 = false
     end
 
     if isinStoreRobberyzonev10 and not Hidemarker then
       DrawMarker(1, StoreRobberycoordv10, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
     end

     ----- Store Robbery v11 -----


    StoreRobberydistv11          = #(StoreRobberycoordv11 - GetEntityCoords(player)) -- Use Z

    if StoreRobberydistv11 <= maxdistance then
      isinStoreRobberyzonev11 = true
    else
      isinStoreRobberyzonev11 = false
    end

    if isinStoreRobberyzonev11 and not Hidemarker then
      DrawMarker(1, StoreRobberycoordv11, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
    end

    ----- Store Robbery v12 -----


    StoreRobberydistv12          = #(StoreRobberycoordv12 - GetEntityCoords(player)) -- Use Z

    if StoreRobberydistv12 <= maxdistance then
      isinStoreRobberyzonev12 = true
    else
      isinStoreRobberyzonev12 = false
    end

    if isinStoreRobberyzonev12 and not Hidemarker then
      DrawMarker(1, StoreRobberycoordv12, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
    end

    ----- Store Robbery v13 -----


    StoreRobberydistv13          = #(StoreRobberycoordv13 - GetEntityCoords(player)) -- Use Z

    if StoreRobberydistv13 <= maxdistance then
      isinStoreRobberyzonev13 = true
    else
      isinStoreRobberyzonev13 = false
    end

    if isinStoreRobberyzonev13 and not Hidemarker then
      DrawMarker(1, StoreRobberycoordv13, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
    end

    ----- Store Robbery v14 -----


    StoreRobberydistv14          = #(StoreRobberycoordv14 - GetEntityCoords(player)) -- Use Z

    if StoreRobberydistv14 <= maxdistance then
      isinStoreRobberyzonev14 = true
    else
      isinStoreRobberyzonev14 = false
    end

    if isinStoreRobberyzonev14 and not Hidemarker then
      DrawMarker(1, StoreRobberycoordv14, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
    end

    ----- Store Robbery v15 -----


    StoreRobberydistv15          = #(StoreRobberycoordv15 - GetEntityCoords(player)) -- Use Z

    if StoreRobberydistv15 <= maxdistance then
      isinStoreRobberyzonev15 = true
    else
      isinStoreRobberyzonev15 = false
    end

    if isinStoreRobberyzonev15 and not Hidemarker then
      DrawMarker(1, StoreRobberycoordv15, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
    end

     ----- Store Robbery v16 -----


     StoreRobberydistv16          = #(StoreRobberycoordv16 - GetEntityCoords(player)) -- Use Z

     if StoreRobberydistv16 <= maxdistance then
       isinStoreRobberyzonev16 = true
     else
       isinStoreRobberyzonev16 = false
     end
 
     if isinStoreRobberyzonev16 and not Hidemarker then
       DrawMarker(1, StoreRobberycoordv16, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
     end
 
     ----- Store Robbery v17 -----
 
 
     StoreRobberydistv17          = #(StoreRobberycoordv17 - GetEntityCoords(player)) -- Use Z
 
     if StoreRobberydistv17 <= maxdistance then
       isinStoreRobberyzonev17 = true
     else
       isinStoreRobberyzonev17 = false
     end
 
     if isinStoreRobberyzonev17 and not Hidemarker then
       DrawMarker(1, StoreRobberycoordv17, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
     end
 
     ----- Store Robbery v18 -----
 
 
     StoreRobberydistv18          = #(StoreRobberycoordv18 - GetEntityCoords(player)) -- Use Z
 
     if StoreRobberydistv18 <= maxdistance then
       isinStoreRobberyzonev18 = true
     else
       isinStoreRobberyzonev18 = false
     end
 
     if isinStoreRobberyzonev18 and not Hidemarker then
       DrawMarker(1, StoreRobberycoordv18, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
     end
 
     ----- Store Robbery v19 -----
 
 
     StoreRobberydistv19          = #(StoreRobberycoordv19 - GetEntityCoords(player)) -- Use Z
 
     if StoreRobberydistv19 <= maxdistance then
       isinStoreRobberyzonev19 = true
     else
       isinStoreRobberyzonev19 = false
     end
 
     if isinStoreRobberyzonev19 and not Hidemarker then
       DrawMarker(1, StoreRobberycoordv19, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 50, true, false, 1, nil, nil, nil, false)
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

  if isinStoreRobberyzonev3 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v3trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev4 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v4trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev5 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v5trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev6 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v6trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev7 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v7trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev8 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v8trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev9 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v9trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev10 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v10trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev11 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v11trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev12 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v12trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev13 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v13trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev14 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v14trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev15 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v15trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev16 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v16trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev17 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v17trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev18 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v18trigger')
    CheckIfSafeIsCracked()
  end

  if isinStoreRobberyzonev19 then
    TriggerServerEvent('GoonScripts-StoreRobberySystem:v19trigger')
    CheckIfSafeIsCracked()
  end

  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v1 then
    SetNewWaypoint(StoreRobberycoordv1)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v2 then
    SetNewWaypoint(StoreRobberycoordv2)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v3 then
    SetNewWaypoint(StoreRobberycoordv3)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v4 then
    SetNewWaypoint(StoreRobberycoordv4)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v5 then
    SetNewWaypoint(StoreRobberycoordv5)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v6 then
    SetNewWaypoint(StoreRobberycoordv6)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v7 then
    SetNewWaypoint(StoreRobberycoordv7)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v8 then
    SetNewWaypoint(StoreRobberycoordv8)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v9 then
    SetNewWaypoint(StoreRobberycoordv9)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v10 then
    SetNewWaypoint(StoreRobberycoordv10)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v11 then
    SetNewWaypoint(StoreRobberycoordv11)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v12 then
    SetNewWaypoint(StoreRobberycoordv12)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v13 then
    SetNewWaypoint(StoreRobberycoordv13)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v14 then
    SetNewWaypoint(StoreRobberycoordv14)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v15 then
    SetNewWaypoint(StoreRobberycoordv15)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v16 then
    SetNewWaypoint(StoreRobberycoordv16)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v17 then
    SetNewWaypoint(StoreRobberycoordv17)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v18 then
    SetNewWaypoint(StoreRobberycoordv18)
  end
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and v19 then
    SetNewWaypoint(StoreRobberycoordv19)
  end
end) 

RegisterKeyMapping('StoreRobberyCommand', 'GoonScripts Store Robbery System', 'keyboard', 'E')


  ----- Checks if Store is robbed or not -----

CheckIfSafeIsCracked = function()
  TriggerServerEvent('GoonScripts-StoreRobberySystem:IsStoreRobbedCheck')
end

RegisterNetEvent('GoonScripts-StoreRobberySystem:StoreCanBeRobbed')
AddEventHandler('GoonScripts-StoreRobberySystem:StoreCanBeRobbed', function()
  exports['mythic_notify']:DoHudText('success', _U('StoreCanBeRobbedText'))
  print("Trigged Robbery Successful")
  StartBreakingIntoSafe()
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:StoreCantBeRobbed')
AddEventHandler('GoonScripts-StoreRobberySystem:StoreCantBeRobbed', function()
  exports['mythic_notify']:DoHudText('inform', _U('StoreCantBeRobbedText'))
  print("Trigged Robbery Failed")
  v1 = false
  v2 = false
  v3 = false
  v4 = false
  v5 = false
  v6 = false
  v7 = false
  v8 = false
  v9 = false
  v10 = false
  v11 = false
  v12 = false
  v13 = false
  v14 = false
  v15 = false
  v16 = false
  v17 = false
  v18 = false
  v19 = false
  PoliceTriggerNotify = false
end)

  ----- Breaks into Safe -----

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
  v3 = false
  v4 = false
  v5 = false
  v6 = false
  v7 = false
  v8 = false
  v9 = false
  v10 = false
  v11 = false
  v12 = false
  v13 = false
  v14 = false
  v15 = false
  v16 = false
  v17 = false
  v18 = false
  v19 = false
  PoliceTriggerNotify = false
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:NotifyPolicefunc')
AddEventHandler('GoonScripts-StoreRobberySystem:NotifyPolicefunc', function()
  PoliceTriggerNotify = true
end)

  ----- Police Notification System -----

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv1')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv1', function()
  v1 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv2')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv2', function()
  v2 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv3')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv3', function()
  v3 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv4')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv4', function()
  v4 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv5')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv5', function()
  v5 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv6')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv6', function()
  v6 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv7')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv7', function()
  v7 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv8')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv8', function()
  v8 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv9')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv9', function()
  v9 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv10')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv10', function()
  v10 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv11')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv11', function()
  v11 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv12')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv12', function()
  v12 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv13')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv13', function()
  v13 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv14')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv14', function()
  v14 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv15')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv15', function()
  v15 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv16')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv16', function()
  v16 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv17')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv17', function()
  v17 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv18')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv18', function()
  v18 = true
end)

RegisterNetEvent('GoonScripts-StoreRobberySystem:Triggerdv19')
AddEventHandler('GoonScripts-StoreRobberySystem:Triggerdv19', function()
  v19 = true
end)

  ----- Blip System -----

Citizen.CreateThread(function()
  for k in pairs(GoonScripts.BlipCoords) do
    local blip = AddBlipForCoord(GoonScripts.BlipCoords[k])

    SetBlipSprite(blip, 110)
    SetBlipDisplay(blip, 3)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 1)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(_U('StoreRobberyBlipText'))
    EndTextCommandSetBlipName(blip)
  end
end)
