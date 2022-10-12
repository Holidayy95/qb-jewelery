local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('qb-jewelery:client:Door', function()
    local jewellery = exports.ox_doorlock:getDoorFromName('jewellery')

    TriggerEvent('ox_doorlock:setState', jewellery.id, 0)
    
end)

RegisterNetEvent('qb-jewelery:server:UseThermite', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.RemoveItem('thermite', 1)
end)
