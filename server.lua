ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Cooldown = false

if Cooldown then
    TriggerClientEvent('GoonScripts-StoreRobberySystem:NotifyPolicefunc')
end

RegisterServerEvent('GoonScripts-StoreRobberySystem:v1trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v1trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:TriggerdV1', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:v2trigger')
AddEventHandler('GoonScripts-StoreRobberySystem:v2trigger', function()
    TriggerClientEvent('GoonScripts-StoreRobberySystem:TriggerdV2', -1)
end)

RegisterServerEvent('GoonScripts-StoreRobberySystem:IsStoreRobbedCheck')
AddEventHandler('GoonScripts-StoreRobberySystem:IsStoreRobbedCheck', function()
    local _source               = source

	if not Cooldown then
    	TriggerClientEvent('GoonScripts-StoreRobberySystem:StoreCanBeRobbed', _source)
    else
    	TriggerClientEvent('GoonScripts-StoreRobberySystem:StoreCantBeRobbed', _source)
    end
end) 

RegisterServerEvent('GoonScripts-StoreRobberySystem:SafeCrackingStarted')
AddEventHandler('GoonScripts-StoreRobberySystem:SafeCrackingStarted', function()
    local _source               = source
    local xPlayer               = ESX.GetPlayerFromId(_source)
    local storerobbeyamount     = GoonScripts.StoreRobberyAmount
    Cooldown = true
    TriggerClientEvent('GoonScripts-StoreRobberySystem:NotifyPolicefunc', -1)
    TriggerClientEvent('GoonScripts-StoreRobberySystem:HideMarkedTrue', -1)
    xPlayer.addAccountMoney('black_money', storerobbeyamount)
    --StoreRobberyConfirmed(1216768, "Store Robbery System", "Player: **"..GetPlayerName(source).."\n Hex: **"..GetPlayerIdentifier(source).."\n Robbed a 24/7""\n Datum: "..os.date(" %H:%M %d.%m.%y").."", "Made by Andistyler") -- EN
    StoreRobberyv1Confirmed(1216768, "Btuiks Rån System", "Spelare: **"..GetPlayerName(source).."\n Hex: **"..GetPlayerIdentifier(source).."\n Rånade en 24/7\n Datum: "..os.date(" %H:%M %d.%m.%y").."", "Made by Andistyler") -- sv
    Wait(GoonScripts.CooldownTime)
    Cooldown = false
    TriggerClientEvent('GoonScripts-StoreRobberySystem:HideMarkedFalse', -1)
end) 

local storerobberylogs = "https://discord.com/api/webhooks/931530420384845824/9CvVfVDLzBQ_fVOEBpR5q_dctkP4btmIdYef5T1FAnphx7TwAYnXJ3nppYPdkSijeaf-"


StoreRobberyv1Confirmed = function(color, name, message, footer)

local storerobberyv1confirmed = {
        {
            ["color"] = color,
            ["title"] = "**".. name .."**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = footer,
            },
        }
    }

PerformHttpRequest(storerobberylogs, function(err, text, headers) end, 'POST', json.encode({username = "Sveriges RP", embeds = storerobberyv1confirmed}), { ['Content-Type'] = 'application/json' })
end