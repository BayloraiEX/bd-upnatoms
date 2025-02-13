local QBCore = exports['qb-core']:GetCoreObject()

if Config.TargetSystem == 'ox' then
    exports.ox_target:addBoxZone({
        coords = vector4(92.91, 287.45, 110.21, 157.48),
        size = vec3(1, 1, 1),
        rotation = 45,
        debug = drawZones,
        options = {
          {
            name = 'UpnAtoms:DrinkMenu',
            event = 'bd-upnatoms:client:OpenDrinkMenu',
            icon = 'fa-solid fa-faucet',
            label = 'Drinks',
            groups = {
              Config.Jobname
            },
          },
        }
      })
elseif Config.TargetSystem == 'qb' then
  exports['qb-target']:AddBoxZone("UpnAtomsDrinkMenu", vector3(92.92, 287.58, 110.24), 0.9, 0.9, {
        name = "UpnAtomsDrinkMenu",
        heading = 300.45,
        debugPoly = false,
        minZ = 110.24 - 2,
        maxZ = 110.24 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:OpenDrinkMenu",
                icon = "fa-solid fa-faucet",
                label = "Drinks",
                job = Config.Jobname
            },
        },
        distance = 1.5
    })
end

lib.registerContext({
    id = 'upnatoms_drink_menu',
    title = 'Drink Menu',
    options = {
        {
            title = 'Ecola',
            icon = 'fa-solid fa-faucet-drip',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeEcola',
        },
        {
            title = 'Sprunk',
            icon = 'fa-solid fa-faucet-drip',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeSprunk',
        },
        {
            title = 'Orang-O-Tang',
            icon = 'fa-solid fa-faucet-drip',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeOrangTang',
        },
        {
            title = 'Hercules',
            icon = 'fa-solid fa-faucet-drip',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeHercules',
        },
        {
            title = 'Junk Enegry',
            icon = 'fa-solid fa-faucet-drip',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeJunkEnergy',
        },
        {
            title = 'Raine Water',
            icon = 'fa-solid fa-faucet-drip',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeRaineWater',
        },
        {
            title = 'Water',
            icon = 'fa-solid fa-faucet-drip',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeWater',
        },
    }
})
RegisterNetEvent('bd-upnatoms:client:OpenDrinkMenu', function()
    lib.showContext('upnatoms_drink_menu')
end)
RegisterNetEvent('bd-upnatoms:client:makeEcola', function()
    if lib.progressCircle({
      duration = 1000,
      position = 'bottom',
      useWhileDead = false,
      canCancel = true,
      disable = {
        move = true,
        car = true,
        combat = true,
      },
      anim = {
        dict = 'mini@repair',
        clip = 'fixing_a_player',
        scenario = 'mini@repair',
      },
    }) then
      TriggerServerEvent('bd-upnatoms:server:makeEcola')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeSprunk', function()
    if lib.progressCircle({
      duration = 1000,
      position = 'bottom',
      useWhileDead = false,
      canCancel = true,
      disable = {
        move = true,
        car = true,
        combat = true,
      },
      anim = {
        dict = 'mini@repair',
        clip = 'fixing_a_player',
        scenario = 'mini@repair',
      },
    }) then
      TriggerServerEvent('bd-upnatoms:server:makeSprunk')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeOrangTang', function()
    if lib.progressCircle({
      duration = 1000,
      position = 'bottom',
      useWhileDead = false,
      canCancel = true,
      disable = {
        move = true,
        car = true,
        combat = true,
      },
      anim = {
        dict = 'mini@repair',
        clip = 'fixing_a_player',
        scenario = 'mini@repair',
      },
    }) then
      TriggerServerEvent('bd-upnatoms:server:makeOrangTang')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeHercules', function()
    if lib.progressCircle({
      duration = 1000,
      position = 'bottom',
      useWhileDead = false,
      canCancel = true,
      disable = {
        move = true,
        car = true,
        combat = true,
      },
      anim = {
        dict = 'mini@repair',
        clip = 'fixing_a_player',
        scenario = 'mini@repair',
      },
    }) then
      TriggerServerEvent('bd-upnatoms:server:makeHercules')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeJunkEnergy', function()
    if lib.progressCircle({
      duration = 1000,
      position = 'bottom',
      useWhileDead = false,
      canCancel = true,
      disable = {
        move = true,
        car = true,
        combat = true,
      },
      anim = {
        dict = 'mini@repair',
        clip = 'fixing_a_player',
        scenario = 'mini@repair',
      },
    }) then
      TriggerServerEvent('bd-upnatoms:server:makeJunkEnergy')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeRaineWater', function()
    if lib.progressCircle({
      duration = 1000,
      position = 'bottom',
      useWhileDead = false,
      canCancel = true,
      disable = {
        move = true,
        car = true,
        combat = true,
      },
      anim = {
        dict = 'mini@repair',
        clip = 'fixing_a_player',
        scenario = 'mini@repair',
      },
    }) then
      TriggerServerEvent('bd-upnatoms:server:makeRaineWater')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeWater', function()
    if lib.progressCircle({
      duration = 1000,
      position = 'bottom',
      useWhileDead = false,
      canCancel = true,
      disable = {
        move = true,
        car = true,
        combat = true,
      },
      anim = {
        dict = 'mini@repair',
        clip = 'fixing_a_player',
        scenario = 'mini@repair',
      },
    }) then
      TriggerServerEvent('bd-upnatoms:server:makeWater')
    else
    end
end)