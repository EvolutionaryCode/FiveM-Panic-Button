--[[
Orginally From - aka-lucifer and Vespra
Edited By - Austin Grandpre
Created - 10-12-2018

Change Log:
10-12-2018 - Orginal Version Added
10-12-2018 - Added Command panicb and having it display the street loaction
10-12-2018 - Added Cross Street & What To Do If There Is No Cross Street

Todo:
X - Add Cross Street
- Add Postal Code According To JCRP Postal Codes
- Verify User Has Correct Discord Tags
- Log to Discord Webhook
- Post 10-99 to CAD System (https://therocketcad.com)

]]

RegisterCommand('panicb', function(source, args, rawCommand)
    local ped = PlayerPedId()
    local x,y,z = table.unpack(GetEntityCoords(ped, false))
    local streetName, crossing = GetStreetNameAtCoord(x, y, z)
    streetName = GetStreetNameFromHashKey(streetName)
    local message = ""
    if crossing ~= nil then
        crossing = GetStreetNameFromHashKey(crossing)
	TriggerEvent('chatMessage', "^1" .. GetPlayerName(source) .. " has called a 10-99 near ^3" .. streetName .. " ^1and ^3" .. crossing .. , { 255, 187, 51 }, message)
end, false)
    else
       TriggerEvent('chatMessage', "^1" .. GetPlayerName(source) .. " has called a 10-99 near ^3" .. streetName .. " ^1 Notice: No Nearby Cross-Street", { 255, 187, 51 }, message)
end, false)

    