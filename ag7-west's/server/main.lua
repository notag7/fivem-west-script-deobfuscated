-- // DEOBFUSCATED BY AG7
ESX = nil
local use = false

function webhook (webhookurl, message, color)
    local embed = {
          {
              ["color"] = color,
              ["title"] = "AG7 Westen",
              ["description"] = message,
                          ["name"] = "AG7 ",
                          ["DISCORD_AVATAR"] = "",
              ["footer"] = {
              ["text"] = "AG7",
              },
          }
      }
    PerformHttpRequest(webhookurl, function(err, text, headers) end, 'POST', json.encode({username = name , embeds = embed, avatar_url = DISCORD_AVATAR }), { ['Content-Type'] = 'application/json' })
end


TriggerEvent('esx:getSharedObject', function(obj)
        ESX = obj
end)

RegisterNetEvent("AG7_heal:giveback")
AddEventHandler("AG7_heal:giveback", function(type)
        local xPlayer = ESX.GetPlayerFromId(source)
        if type == "big" then
                xPlayer.addInventoryItem(Config.KevlarBigItemName, 1)
        end
end)

ESX.RegisterUsableItem(Config.KevlarBigItemName, function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
        local _source = source
        local xPlayerz = ESX.GetPlayerFromId(_source)
        local xPlayers = ESX.GetPlayers()
        local steamname = GetPlayerName(_source)
        webhook(Config.webhook, 'Spieler '  .. steamname .. ' mit der ID ' .. source ..  Config.webhookmessage ,15158332)
        if use then
                TriggerClientEvent("gds<g<gdsgds", source,  Config.Locales["error"])
        else
                use = true
                xPlayer.removeInventoryItem(Config.KevlarBigItemName, 1)
                TriggerClientEvent("AG7_heal:kevlarbig", source)
                Citizen.Wait(Config.BigWaittime * 1000)
                use = false

        end
end)


-- DISARMED :3

--if GetCurrentResourceName() ~= "" then
--    while true do
--
--    end
-- end