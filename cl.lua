RegisterCommand("serverid", function(source) 
    chatMessage(GetPlayerServerId(source))
end)
 
RegisterCommand("name" function(source) 
    chatMessage(GetPlayerName(source))
end)

RegisterCommand("sethealth", function(source, args)
    SetEntityHealth(GetPlayerPed(-1), tonumber(args[1]))
    chatMessage("Health has been set to " ..GetEntityHealth(GetPlayerPed(-1)))
end)

RegisterCommand("showhealth", function(source, args)
    chatMessage(GetEntityHealth(GetPlayerPed(-1)))
end)

RegisterNetEvent("returnping")
AddEventHandler("returnPing", function(ping)
    pingNumber = ping
end)

RegisterCommand("ping", function(source)
    PlaySound(source, "CANCEL", "HUD_MINI_GAME_SOUNDSET", 0,0,1)
    TriggerServerEvent("pinging")
    chatMessage(pingNumbers)
end)

-- Function
function chatMessage(msg)
    TriggerEvent("chatMessage", "", {0,0,0}, msg)
end