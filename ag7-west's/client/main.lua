-- // DEOBFUSCATED BY AG7
ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    end
end)

function startUI(time, text)
        SendNUIMessage({
                type = "ui",
                display = true,
                time = time,
                percentage = percentage
        })
end

function vestAnimation()
    local ped = PlayerPedId()
        local lib, anim = 'anim@heists@narcotics@funding@gang_idle', 'gang_chatting_idle01'
    local p = PlayerPedId()
    ESX.Streaming.RequestAnimDict(lib, function()
        TaskPlayAnim(p, lib, anim, 8.0, -8.0, 6000, 0, 0, false, false, false)
    end)
end

print("")

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsEntityPlayingAnim(GetPlayerPed(-1), 'anim@heists@narcotics@funding@gang_idle', 'gang_chatting_idle01', 3) then
            DisableControlAction(0, 177, true)
            DisableControlAction(0, 200, true)
            DisableControlAction(0, 202, true)
            DisableControlAction(0, 322, true)
            DisableControlAction(0, 73, true)
            DisableControlAction(0, 154, true)
            DisableControlAction(0, 186, true)
            DisableControlAction(0, 252, true)
            DisableControlAction(0, 323, true)
            DisableControlAction(0, 337, true)
            DisableControlAction(0, 345, true)
            DisableControlAction(0, 304, true)
            DisableControlAction(0, 101, true)
            DisableControlAction(0, 104, true)
            DisableControlAction(0, 0, true)
            DisableControlAction(0, 104, true)
            DisableControlAction(0, 236, true)
            DisableControlAction(0, 320, true)
            DisableControlAction(0, 325, true)
        end
    end
end)

RegisterNetEvent('AG7_heal:kevlarbig')
AddEventHandler('AG7_heal:kevlarbig', function()
        local mh = GetEntityMaxHealth(playerPed)
    local p = PlayerPedId()
    vestAnimation()
    startUI(Config.BigWaittime * 1000, "")
    Citizen.Wait(Config.BigWaittime * 1000)
    SetPedArmour(p, Config.BigArmor)
    SetEntityHealth(p, Config.MidArmor)
    ClearPedTasks(p)
end)