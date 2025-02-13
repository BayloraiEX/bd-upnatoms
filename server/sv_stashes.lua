local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InventorySystem == 'ox' then
    RegisterNetEvent('ox:upnatomsFridge', function()
        ox_inventory:RegisterStash('upnatomsFridge', 'Fridge', 50, 750000, true)
    end)
    RegisterNetEvent('ox:upnatomsHeater', function()
        ox_inventory:RegisterStash('upnatomsHeater', 'Heater', 30, 250000, true)
    end)
    RegisterNetEvent('ox:upnatomsFrontTray1', function()
        ox_inventory:RegisterStash('upnatomsFrontTray1', 'Food Tray', 5, 25000, true)
    end)
    RegisterNetEvent('ox:upnatomsFrontTray2', function()
        ox_inventory:RegisterStash('upnatomsFrontTray2', 'Food Tray', 5, 25000, true)
    end)
    RegisterNetEvent('ox:upnatomsFrontTray3', function()
        ox_inventory:RegisterStash('upnatomsFrontTray3', 'Food Tray', 5, 25000, true)
    end)
    RegisterNetEvent('ox:upnatomsFrontTray4', function()
        ox_inventory:RegisterStash('upnatomsFrontTray4', 'Food Tray', 5, 25000, true)
    end)
elseif Config.InventorySystem == 'qb' then
    RegisterNetEvent('bd-upnatoms:server:upnatomsFridge', function(upnatomsFridge)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Fridge'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 750000,
                slots = 50,
            })
        end
    end)
    RegisterNetEvent('bd-upnatoms:server:upnatomsHeater', function(upnatomsHeater)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Heater'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 250000,
                slots = 30,
            })
        end
    end)
    RegisterNetEvent('bd-upnatoms:server:upnatomsFrontTray1', function(upnatomsFrontTray1)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Food Tray'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 25000,
                slots = 5,
            })
        end
    end)
    RegisterNetEvent('bd-upnatoms:server:upnatomsFrontTray2', function(upnatomsFrontTray2)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Food Tray'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 25000,
                slots = 5,
            })
        end
    end)
    RegisterNetEvent('bd-upnatoms:server:upnatomsFrontTray3', function(upnatomsFrontTray3)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Food Tray'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 25000,
                slots = 5,
            })
        end
    end)
    RegisterNetEvent('bd-upnatoms:server:upnatomsFrontTray4', function(upnatomsFrontTray4)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Food Tray'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 25000,
                slots = 5,
            })
        end
    end)
    -- SHOP --
    RegisterNetEvent('bd-upnatoms:server:ingredientShop', function(ingredientShop)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local playerCoords = GetEntityCoords(playerPed)
        exports['qb-inventory']:CreateShop({
            name = 'ingredientShop',
            label = 'Up-N-Atoms Shop',
            coords = vector3(89.43, 294.03, 110.21), -- match where the target is on client side
            slots = 20,
            items = Config.Items
        })
    
        if Player then
            exports['qb-inventory']:OpenShop(source, 'ingredientShop')
        end
    end)
end