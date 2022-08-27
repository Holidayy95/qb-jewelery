local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('qb-jewelery:client:Door', function()
    local jewellery = exports.ox_doorlock:getDoorFromName('jewellery')

    TriggerEvent('ox_doorlock:setState', jewellery.id, 0)
    
end)

RegisterNetEvent('qb-jewelery:server:RemoveDoorItem', function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    local item = Config.PaletoPacificDoor
    Player.Functions.RemoveItem(item, 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'remove')
end)

QBCore.Functions.CreateCallback('qb-jewelery:server:GetItemsNeeded', function(source, cb, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player ~= nil then 
        local Themite = Player.Functions.GetItemByName(item)
        if Themite ~= nil then
            cb(true)
        else
            cb(false)
        end
    else
        cb(false)
    end
end)