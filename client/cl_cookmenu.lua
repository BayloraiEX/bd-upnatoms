local QBCore = exports['qb-core']:GetCoreObject()

if Config.TargetSystem == 'ox' then
    ----- | CREATING COOK MENU TARGET | -----
    exports.ox_target:addBoxZone({
        coords = vector4(93.96, 291.81, 110.25, 139.22),
        size = vec3(1,1,1),
        rotation = 45,
        debug = drawZones,
        options = {
            {
                name = 'upnatoms:cookmenu',
                event = 'bd-upnatoms:client:openCookMenu',
                icon = 'fa-solid fa-fire-burner',
                label = 'Cook Menu',
                groups = {
                    Config.Jobname
                },
            }
        }
    })
    ----- | CREATING FRYER MENU TARGET | -----
    exports.ox_target:addBoxZone({
        coords = vector4(93.02, 292.16, 110.08, 202.99),
        size = vec3(1,1,1),
        rotation = 45,
        debug = drawZones,
        options = {
            {
                name = 'upnatoms:fryermenu',
                event = 'bd-upnatoms:client:openFryerMenu',
                icon = 'fa-solid fa-fire-burner',
                label = 'Fryer Menu',
                groups = {
                    Config.Jobname
                },
            }
        }
    })
    ----- | CREATING WORK STATION | -----
    exports.ox_target:addBoxZone({
        coords = vector4(93.08, 290.9, 110.21, 81.77),
        size = vec3(1,1,1),
        rotation = 45,
        debug = drawZones,
        options = {
            {
                name = 'upnatoms:buildermenu',
                event = 'bd-upnatoms:client:openBuilderMenu',
                icon = 'fa-solid fa-fire-burner',
                label = 'Salad & Sandwich Area',
                groups = {
                    Config.Jobname
                },
            }
        }
    })
elseif Config.TargetSystem == 'qb' then
    ----- | CREATING COOK MENU TARGET | -----
    exports['qb-target']:AddBoxZone("UpnAtomsCookMenu", vector3(93.96, 291.78, 110.26), 0.9, 0.9, {
        name = "UpnAtomsCookMenu",
        heading = 300.45,
        debugPoly = false,
        minZ = 110.26 - 2,
        maxZ = 110.26 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:openCookMenu",
                icon = "fa-solid fa-fire-burner",
                label = "Cook Menu",
                job = Config.Jobname
            },
        },
        distance = 1.5
    })
    ----- | CREATING FRYER MENU TARGET | -----
    exports['qb-target']:AddBoxZone("UpnAtomsFryerMenu", vector3(93.02, 292.16, 110.08), 0.9, 0.9, {
        name = "UpnAtomsFryerMenu",
        heading = 300.45,
        debugPoly = false,
        minZ = 110.08 - 2,
        maxZ = 110.08 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:openFryerMenu",
                icon = "fa-solid fa-fire-burner",
                label = "Fryer Menu",
                job = Config.Jobname
            },
        },
        distance = 1.5
    })
    ----- | CREATING WORK STATION | -----
    exports['qb-target']:AddBoxZone("UpnAtomsBuilderMenu", vector3(93.08, 290.9, 110.21), 0.9, 0.9, {
        name = "UpnAtomsBuilderMenu",
        heading = 300.45,
        debugPoly = false,
        minZ = 110.21 - 2,
        maxZ = 110.21 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:openBuilderMenu",
                icon = "fa-solid fa-fire-burner",
                label = "Salad & Sandwich Area",
                job = Config.Jobname
            },
        },
        distance = 1.5
    })
end
lib.registerContext({
    id = 'upnatoms_cooks',
    title = 'Cooking Menu',
    options = {
        {
            title = 'Burgers & Chicken',
            description = 'All our Burgers and Chicken Items',
            menu = 'upnatoms_burgers',
        },
        {
            title = 'Breakfast',
            description = 'All our breakfast items',
            menu = 'upnatoms_breakfast',
        },
    },
})
RegisterNetEvent('bd-upnatoms:client:openCookMenu', function()
    lib.showContext('upnatoms_cooks')
end)
lib.registerContext({
    id = 'upnatoms_burgers',
    title = 'Burgers & Chicken',
    menu = 'upnatoms_cooks',
    options = {
      {
        title = '2x Bacon Burger',
        description = 'You need 2x Frozen Patty',
        icon = 'burger',
        iconColor = 'DarkSalmon',
        event = 'bd-upnatoms:client:makeBaconBurger'
      },
      {
        title = '2x Burger',
        description = 'You need 2x Frozen Patty',
        icon = 'burger',
        iconColor = 'DarkSalmon',
        event = 'bd-upnatoms:client:makeBurger'
      },
      {
        title = '2x Chicken Burger',
        description = 'You need 2x Chicken Patty',
        icon = 'burger',
        iconColor = 'DarkSalmon',
        event = 'bd-upnatoms:client:makeChickenBurger'
      },
      {
        title = '2x Double Burger',
        description = 'You need 4x Frozen Patty',
        icon = 'burger',
        iconColor = 'DarkSalmon',
        event = 'bd-upnatoms:client:makeDoubleBurger'
      },
      {
        title = '2x Double Chicken Burger',
        description = 'You need 4x Chicken Patty',
        icon = 'burger',
        iconColor = 'DarkSalmon',
        event = 'bd-upnatoms:client:makeDoubleChickenBurger'
      },
      {
        title = '2x Pickle Burger',
        description = 'You need 2x Pickles',
        icon = 'burger',
        iconColor = 'DarkSalmon',
        event = 'bd-upnatoms:client:makePickleBurger'
      },
      {
        title = '2x Hunk-O-Hen',
        description = 'You need 4x Raw Chicken',
        icon = 'drumstick-bite',
        iconColor = 'DarkSalmon',
        event = 'bd-upnatoms:client:makeHunksOHen'
      },
      {
        title = '2x Grilled Chicken',
        description = 'You need 2x Raw Chicken',
        icon = 'drumstick-bite',
        iconColor = 'DarkSalmon',
        event = 'bd-upnatoms:client:makeGrilledChicken'
      },
    }
})
RegisterNetEvent('bd-upnatoms:client:makeBaconBurger', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeBaconBurger')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeBurger', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeBurger')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeChickenBurger', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeChickenBurger')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeDoubleBurger', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeDoubleBurger')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeDoubleChickenBurger', function()
  if lib.progressCircle({
    duration = 1750,
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
    TriggerServerEvent('bd-upnatoms:server:makeDoubleChickenBurger')
  else
  end
end)
RegisterNetEvent('bd-upnatoms:client:makePickleBurger', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makePickleBurger')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeHunksOHen', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeHunksOHen')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeGrilledChicken', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeGrilledChicken')
    else
    end
end)
----------------------------------------------------------------------------------------------------------------
lib.registerContext({
    id = 'upnatoms_breakfast',
    title = 'Breakfast Items',
    menu = 'upnatoms_cooks',
    options = {
        {
            title = '2x Bacon n Eggs',
            description = 'You need 2x Eggs',
            icon = 'utensils',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeBaconEggs',
        },
        {
            title = '2x Bacon Rolls',
            description = 'You need 2x Raw Bacon',
            icon = 'utensils',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeBaconRolls',
        },
        {
            title = '2x Eggs Benedict',
            description = 'You need 2x Eggs',
            icon = 'utensils',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeEggsBenedict',
        },
        {
            title = '2x Eggs Florentine',
            description = 'You need 2x Eggs',
            icon = 'utensils',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeEggsFlorentine',
        },
        {
            title = '2x Bacon French Toast',
            description = 'You need 2x Raw Bacon',
            icon = 'utensils',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeBaconFrenchToast',
        },
        {
            title = '2x Sausages',
            description = 'You need 2x Raw Sausage',
            icon = 'utensils',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeSausages',
        },
    },
})
RegisterNetEvent('bd-upnatoms:client:makeBaconEggs', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeBaconEggs')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeBaconRolls', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeBaconRolls')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeEggsBenedict', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeEggsBenedict')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeEggsFlorentine', function()
  if lib.progressCircle({
    duration = 1750,
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
    TriggerServerEvent('bd-upnatoms:server:makeEggsFlorentine')
  else
  end
end)
RegisterNetEvent('bd-upnatoms:client:makeBaconFrenchToast', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeBaconFrenchToast')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeSausages', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeSausages')
    else
    end
end)
---------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('bd-upnatoms:client:openFryerMenu', function()
    lib.showContext('upnatoms_fryer')
end)
lib.registerContext({
    id = 'upnatoms_fryer',
    title = 'Deepfried Items',
    options = {
        {
            title = '2x Hashbrowns',
            description = 'You need 2x Potatoes',
            icon = 'utensils',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeHashbrowns'
        },
        {
            title = '2x Chicken Fillets',
            description = 'You need 2x Raw Chicken',
            icon = 'utensils',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeChickenFillets'
        },
        {
            title = '2x Chicken Stars',
            description = 'You need 2x Raw Chicken',
            icon = 'utensils',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeChickenStars'
        },
    },
})
RegisterNetEvent('bd-upnatoms:client:makeHashbrowns', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeHashbrowns')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeChickenFillets', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeChickenFillets')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeChickenStars', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeChickenStars')
    else
    end
end)
---------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('bd-upnatoms:client:openBuilderMenu', function()
    lib.showContext('upnatoms_buildmenu')
end)
lib.registerContext({
    id = 'upnatoms_buildmenu',
    title = 'Sandwiches & Salads',
    options = {
        {
            title = '2x Sandwich',
            description = 'You need 2x Bread',
            icon = 'bread-slice',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeSandwich'
        },
        {
          title = '2x Chicken Sandwich',
          description = 'You need 2x Bread',
          icon = 'bread-slice',
          iconColor = 'DarkSalmon',
          event = 'bd-upnatoms:client:makeChickenSandwich'
      },
        {
            title = '2x Chicken Salad',
            description = 'You need 1x Lettuce',
            icon = 'bowl-food',
            iconColor = 'DarkSalmon',
            event = 'bd-upnatoms:client:makeSalad'
        },
    },
})
RegisterNetEvent('bd-upnatoms:client:makeSandwich', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeSandwich')
    else
    end
end)
RegisterNetEvent('bd-upnatoms:client:makeChickenSandwich', function()
  if lib.progressCircle({
    duration = 1750,
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
    TriggerServerEvent('bd-upnatoms:server:makeChickenSandwich')
  else
  end
end)
RegisterNetEvent('bd-upnatoms:client:makeSalad', function()
    if lib.progressCircle({
      duration = 1750,
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
      TriggerServerEvent('bd-upnatoms:server:makeSalad')
    else
    end
end)

  