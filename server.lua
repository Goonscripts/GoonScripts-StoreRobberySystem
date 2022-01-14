ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Cooldown = false


RegisterServerEvent('GoonScripts-StoreRobberySystem:IsStoreRobbedCheckv1')
AddEventHandler('GoonScripts-StoreRobberySystem:IsStoreRobbedCheckv1', function()
    local _source               = source

	if not Cooldown then
    	TriggerClientEvent('GoonScripts-StoreRobberySystem:StoreCanBeRobbedv1', _source)
    else
    	TriggerClientEvent('GoonScripts-StoreRobberySystem:StoreCantBeRobbedv1', _source)
    end
end) 

RegisterServerEvent('GoonScripts-StoreRobberySystem:SafeCrackingStartedv1')
AddEventHandler('GoonScripts-StoreRobberySystem:SafeCrackingStartedv1', function()
    local _source               = source
    local xPlayer               = ESX.GetPlayerFromId(_source)
    local storerobbeyamount     = GoonScripts.StoreRobberyAmount
    Cooldown = true
    if xPlayer.job.name == 'police' then
    TriggerClientEvent('esx:showNotification', 1, _U('NotifyPolice'))
    end
    TriggerClientEvent('GoonScripts-StoreRobberySystem:HideMarkedTrue', _source)
    xPlayer.addAccountMoney('black_money', storerobbeyamount)
    --StoreRobberyConfirmed(1216768, "Store Robbery System", "Player: **"..GetPlayerName(source).."\n Hex: **"..GetPlayerIdentifier(source).."\n Robbed Grove Street Gas Station""\n Datum: "..os.date(" %H:%M %d.%m.%y").."", "Made by Andistyler") -- EN
    StoreRobberyConfirmed(1216768, "Btuiks Rån System", "Spelare: **"..GetPlayerName(source).."\n Hex: **"..GetPlayerIdentifier(source).."\n Rånade Grove Street Bensinmack\n Datum: "..os.date(" %H:%M %d.%m.%y").."", "Made by Andistyler") -- sv
    Wait(GoonScripts.CooldownTime)
    Cooldown = false
    TriggerClientEvent('GoonScripts-StoreRobberySystem:HideMarkedFalse', _source)
end) 

local storerobberylogs = "https://discord.com/api/webhooks/931530420384845824/9CvVfVDLzBQ_fVOEBpR5q_dctkP4btmIdYef5T1FAnphx7TwAYnXJ3nppYPdkSijeaf-"


StoreRobberyConfirmed = function(color, name, message, footer)

local storerobberypickedup = {
        {
            ["color"] = color,
            ["title"] = "**".. name .."**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = footer,
            },
        }
    }

PerformHttpRequest(storerobberylogs, function(err, text, headers) end, 'POST', json.encode({username = "Sveriges RP", embeds = storerobberypickedup}), { ['Content-Type'] = 'application/json' })
end