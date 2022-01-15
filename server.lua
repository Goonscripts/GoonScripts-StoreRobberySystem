ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Cooldown = false

if Cooldown then
    TriggerClientEvent('GoonScripts-StoreRobberySystem:NotifyPolicefunc')
end

----- Gets if triggerd and sends back -----

RegisterServerEvent('GoonScripts-StoreRobberySystem:v1trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v1trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv1', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v2trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v2trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv2', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v3trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v3trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv3', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v4trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v4trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv4', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v5trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v5trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv5', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v6trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v6trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv6', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v7trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v7trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv7', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v8trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v8trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv8', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v9trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v9trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv9', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v10trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v10trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv10', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v11trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v11trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv11', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v12trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v12trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv12', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v13trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v13trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv13', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v14trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v14trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv14', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v15trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v15trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv15', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v16trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v16trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv16', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v17trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v17trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv17', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v18trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v18trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv18', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v19trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v19trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:Triggerdv19', -1)
end)

----- Checks if Store is Robbed -----

RegisterServerEvent('GoonScripts-StoreRobberySystem:IsStoreRobbedCheck')
AddEventHandler('GoonScripts-StoreRobberySystem:IsStoreRobbedCheck', function()
    local _source               = source

	if not Cooldown then
    	TriggerClientEvent('GoonScripts-StoreRobberySystem:StoreCanBeRobbed', _source)
    else
    	TriggerClientEvent('GoonScripts-StoreRobberySystem:StoreCantBeRobbed', _source)
    end
end) 

----- Store Robbery Functions -----

RegisterServerEvent('GoonScripts-StoreRobberySystem:SafeCrackingStarted')
AddEventHandler('GoonScripts-StoreRobberySystem:SafeCrackingStarted', function()
    local _source               = source
    local xPlayer               = ESX.GetPlayerFromId(_source)
    local storerobbeyamount     = GoonScripts.StoreRobberyAmount
    Cooldown = true
    TriggerClientEvent('GoonScripts-StoreRobberySystem:NotifyPolicefunc', -1)
    TriggerClientEvent('GoonScripts-StoreRobberySystem:HideMarkedTrue', -1)
    xPlayer.addAccountMoney('black_money', storerobbeyamount)
    --StoreRobberyConfirmed(1216768, "Store Robbery System", "Player: **"..GetPlayerName(source).."\n Hex: **"..GetPlayerIdentifier(source).."\n Robbed a Store""\n Datum: "..os.date(" %H:%M %d.%m.%y").."", "Made by Andistyler") -- EN
    StoreRobberyConfirmed(1216768, "Butiks Rån System", "Spelare: **"..GetPlayerName(source).."\n Hex: **"..GetPlayerIdentifier(source).."\n Rånade en Butik\n Datum: "..os.date(" %H:%M %d.%m.%y").."", "Made by Andistyler") -- sv
    Wait(GoonScripts.CooldownTime)
    Cooldown = false
    TriggerClientEvent('GoonScripts-StoreRobberySystem:HideMarkedFalse', -1)
end) 

----- Store Robbery Logs -----

local storerobberylogs = "https://discord.com/api/webhooks/932001985157267526/u-RCDPXc0qLjgIKeblmT6M9y2_MmtWtdA1EeX0t46atQY0agIOsU5IQEc8Whiv4Lxh54"


StoreRobberyConfirmed = function(color, name, message, footer)

local storerobberyconfirmed = {
        {
            ["color"] = color,
            ["title"] = "**".. name .."**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = footer,
            },
        }
    }

PerformHttpRequest(storerobberylogs, function(err, text, headers) end, 'POST', json.encode({username = "Sveriges RP", embeds = storerobberyconfirmed}), { ['Content-Type'] = 'application/json' })
end