local QBCore = exports['qb-core']:GetCoreObject()

if Config.TargetSystem == 'ox' then
    exports.ox_target:addBoxZone({
        coords = vector4(89.07, 288.78, 110.24, 208.24),
        size = vec3(1,1,1),
        rotation = 45,
        debug = drawZones,
        options = {
            {
                name = 'upnatomsRegister1',
                event = 'bd-upnatoms:client:bill',
                icon = 'fa-solid fa-cash-register',
                label = 'Register',
                groups = {
                    Config.Jobname
                },
            }
        }
    })
    exports.ox_target:addBoxZone({
        coords = vector4(89.65, 287.74, 110.31, 205.62),
        size = vec3(1,1,1),
        rotation = 45,
        debug = drawZones,
        options = {
            {
                name = 'upnatomsRegister2',
                event = 'bd-upnatoms:client:bill',
                icon = 'fa-solid fa-cash-register',
                label = 'Register',
                groups = {
                    Config.Jobname
                },
            }
        }
    })
    exports.ox_target:addBoxZone({
        coords = vector4(90.24, 286.46, 110.28, 26.24),
        size = vec3(1,1,1),
        rotation = 45,
        debug = drawZones,
        options = {
            {
                name = 'upnatomsRegister3',
                event = 'bd-upnatoms:client:bill',
                icon = 'fa-solid fa-cash-register',
                label = 'Register',
                groups = {
                    Config.Jobname
                },
            }
        }
    })
    exports.ox_target:addBoxZone({
        coords = vector4(94.46, 284.64, 110.26, 317.99),
        size = vec3(1,1,1),
        rotation = 45,
        debug = drawZones,
        options = {
            {
                name = 'upnatomsRegister4',
                event = 'bd-upnatoms:client:bill',
                icon = 'fa-solid fa-cash-register',
                label = 'Register',
                groups = {
                    Config.Jobname
                },
            }
        }
    })
elseif Config.TargetSystem == 'qb' then
    exports['qb-target']:AddBoxZone("UpnAtomsRegister1", vector3(89.07, 288.78, 110.24), 0.9, 0.9, {
        name = "UpnAtomsRegister1",
        heading = 300.45,
        debugPoly = false,
        minZ = 110.24 - 2,
        maxZ = 110.24 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:bill",
                icon = "fa-solid fa-cash-register",
                label = "Register",
                job = Config.Jobname
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("UpnAtomsRegister2", vector3(89.65, 287.53, 110.24), 0.9, 0.9, {
        name = "UpnAtomsRegister2",
        heading = 300.45,
        debugPoly = false,
        minZ = 110.24 - 2,
        maxZ = 110.24 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:bill",
                icon = "fa-solid fa-cash-register",
                label = "Register",
                job = Config.Jobname
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("UpnAtomsRegister3", vector3(90.24, 286.46, 110.24), 0.9, 0.9, {
        name = "UpnAtomsRegister3",
        heading = 300.45,
        debugPoly = false,
        minZ = 110.24 - 2,
        maxZ = 110.24 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:bill",
                icon = "fa-solid fa-cash-register",
                label = "Register",
                job = Config.Jobname
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("UpnAtomsRegister4", vector3(94.46, 284.64, 110.24), 0.9, 0.9, {
        name = "UpnAtomsRegister4",
        heading = 300.45,
        debugPoly = false,
        minZ = 110.24 - 2,
        maxZ = 110.24 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:bill",
                icon = "fa-solid fa-cash-register",
                label = "Register",
                job = Config.Jobname
            },
        },
        distance = 1.5
    })
end

RegisterNetEvent("bd-upnatoms:client:bill", function()
    local bill = lib.inputDialog('Register', {
        {type = 'input', label = 'Citizen ID', description = 'Players Citizen ID', icon = 'hashtag'},
        {type = 'number', label = 'Bill Price', description = 'The Bills Total Price', icon = 'dollar-sign'}
    })
    if bill ~= nil then
        if bill[1] == nil or bill[2] == nil then
            return
        end
        TriggerServerEvent('bd-upnatoms:server:billPlayer', bill[1], bill[2])
    end
end)