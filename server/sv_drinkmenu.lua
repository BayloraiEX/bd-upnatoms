local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InventorySystem == 'ox' then
    RegisterNetEvent('bd-upnatoms:server:makeEcola', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'atoms_sugar_cubes', 2, false) then
          lib.notify(source, {
            id = 'upnatoms',
            title = 'Up-N-Atoms',
            description = 'You need 2x Sugar Cubes to make Ecola',
            showDuration = false,
            position = 'top-right',
            style = {
              backgroundColor = '#141517',
              color = '#e9967a',
              ['.description'] = {
                  color = '#909296'
              }
          },
            icon = 'a',
            iconColor = '#e9967a'
          }) return end
        ox_inventory:AddItem(src, 'atoms_ecola', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have made 2x Ecola',
          showDuration = false,
          position = 'top-right',
          style = {
            backgroundColor = '#141517',
            color = '#e9967a',
            ['.description'] = {
                color = '#909296'
            }
        },
          icon = 'a',
          iconColor = '#e9967a'
        })
      end)
      RegisterNetEvent('bd-upnatoms:server:makeSprunk', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'atoms_sugar_cubes', 2, false) then
          lib.notify(source, {
            id = 'upnatoms',
            title = 'Up-N-Atoms',
            description = 'You need 2x Sugar Cubes to make Sprunk',
            showDuration = false,
            position = 'top-right',
            style = {
              backgroundColor = '#141517',
              color = '#e9967a',
              ['.description'] = {
                  color = '#909296'
              }
          },
            icon = 'a',
            iconColor = '#e9967a'
          }) return end
        ox_inventory:AddItem(src, 'atoms_sprunk', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have made 2x Sprunk',
          showDuration = false,
          position = 'top-right',
          style = {
            backgroundColor = '#141517',
            color = '#e9967a',
            ['.description'] = {
                color = '#909296'
            }
        },
          icon = 'a',
          iconColor = '#e9967a'
        })
      end)
      RegisterNetEvent('bd-upnatoms:server:makeOrangTang', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'atoms_oranges', 2, false) then
          lib.notify(source, {
            id = 'upnatoms',
            title = 'Up-N-Atoms',
            description = 'You need 2x Oranges',
            showDuration = false,
            position = 'top-right',
            style = {
              backgroundColor = '#141517',
              color = '#e9967a',
              ['.description'] = {
                  color = '#909296'
              }
          },
            icon = 'a',
            iconColor = '#e9967a'
          }) return end
        ox_inventory:AddItem(src, 'atoms_orangtang', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have made 2x Orang-O-Tang',
          showDuration = false,
          position = 'top-right',
          style = {
            backgroundColor = '#141517',
            color = '#e9967a',
            ['.description'] = {
                color = '#909296'
            }
        },
          icon = 'a',
          iconColor = '#e9967a'
        })
      end)
      RegisterNetEvent('bd-upnatoms:server:makeHercules', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'atoms_carbonated_water', 2, false) then
          lib.notify(source, {
            id = 'upnatoms',
            title = 'Up-N-Atoms',
            description = 'You need 2x Carbonated Water',
            showDuration = false,
            position = 'top-right',
            style = {
              backgroundColor = '#141517',
              color = '#e9967a',
              ['.description'] = {
                  color = '#909296'
              }
          },
            icon = 'a',
            iconColor = '#e9967a'
          }) return end
        ox_inventory:AddItem(src, 'atoms_hercules', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have made 2x Hercules',
          showDuration = false,
          position = 'top-right',
          style = {
            backgroundColor = '#141517',
            color = '#e9967a',
            ['.description'] = {
                color = '#909296'
            }
        },
          icon = 'a',
          iconColor = '#e9967a'
        })
      end)
      RegisterNetEvent('bd-upnatoms:server:makeJunkEnergy', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'atoms_carbonated_water', 2, false) then
          lib.notify(source, {
            id = 'upnatoms',
            title = 'Up-N-Atoms',
            description = 'You need 2x Carbonated Water',
            showDuration = false,
            position = 'top-right',
            style = {
              backgroundColor = '#141517',
              color = '#e9967a',
              ['.description'] = {
                  color = '#909296'
              }
          },
            icon = 'a',
            iconColor = '#e9967a'
          }) return end
        ox_inventory:AddItem(src, 'atoms_junk', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have made 2x Junk Energy',
          showDuration = false,
          position = 'top-right',
          style = {
            backgroundColor = '#141517',
            color = '#e9967a',
            ['.description'] = {
                color = '#909296'
            }
        },
          icon = 'a',
          iconColor = '#e9967a'
        })
      end)
      RegisterNetEvent('bd-upnatoms:server:makeRaineWater', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'atoms_raine', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have grabbed 2x Raine Water',
          showDuration = false,
          position = 'top-right',
          style = {
            backgroundColor = '#141517',
            color = '#e9967a',
            ['.description'] = {
                color = '#909296'
            }
        },
          icon = 'a',
          iconColor = '#e9967a'
        })
      end)
      RegisterNetEvent('bd-upnatoms:server:makeWater', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'atoms_water', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have grabbed 2x Water',
          showDuration = false,
          position = 'top-right',
          style = {
            backgroundColor = '#141517',
            color = '#e9967a',
            ['.description'] = {
                color = '#909296'
            }
        },
          icon = 'a',
          iconColor = '#e9967a'
        })
      end)
elseif Config.InventorySystem == 'qb' then
    RegisterNetEvent('bd-upnatoms:server:makeEcola', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'atoms_sugar_cubes', 2, false) then
          lib.notify(source, {
            id = 'upnatoms',
            title = 'Up-N-Atoms',
            description = 'You need 2x Sugar Cubes to make Ecola',
            showDuration = false,
            position = 'top-right',
            style = {
              backgroundColor = '#141517',
              color = '#e9967a',
              ['.description'] = {
                  color = '#909296'
              }
          },
            icon = 'a',
            iconColor = '#e9967a'
          }) return end
        exports['qb-inventory']:AddItem(src, 'atoms_ecola', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_ecola'], 'add', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have made 2x Ecola',
          showDuration = false,
          position = 'top-right',
          style = {
            backgroundColor = '#141517',
            color = '#e9967a',
            ['.description'] = {
                color = '#909296'
            }
        },
          icon = 'a',
          iconColor = '#e9967a'
        })
    end)
    RegisterNetEvent('bd-upnatoms:server:makeSprunk', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'atoms_sugar_cubes', 2, false) then
          lib.notify(source, {
            id = 'upnatoms',
            title = 'Up-N-Atoms',
            description = 'You need 2x Sugar Cubes to make Sprunk',
            showDuration = false,
            position = 'top-right',
            style = {
              backgroundColor = '#141517',
              color = '#e9967a',
              ['.description'] = {
                  color = '#909296'
              }
          },
            icon = 'a',
            iconColor = '#e9967a'
          }) return end
        exports['qb-inventory']:AddItem(src, 'atoms_sprunk', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_sprunk'], 'add', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have made 2x Sprunk',
          showDuration = false,
          position = 'top-right',
          style = {
            backgroundColor = '#141517',
            color = '#e9967a',
            ['.description'] = {
                color = '#909296'
            }
        },
          icon = 'a',
          iconColor = '#e9967a'
        })
    end)
    RegisterNetEvent('bd-upnatoms:server:makeOrangTang', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'atoms_oranges', 2, false) then
          lib.notify(source, {
            id = 'upnatoms',
            title = 'Up-N-Atoms',
            description = 'You need 2x Oranges to make Orang-O-Tang',
            showDuration = false,
            position = 'top-right',
            style = {
              backgroundColor = '#141517',
              color = '#e9967a',
              ['.description'] = {
                  color = '#909296'
              }
          },
            icon = 'a',
            iconColor = '#e9967a'
          }) return end
        exports['qb-inventory']:AddItem(src, 'atoms_orangtang', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_orangtang'], 'add', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have made 2x Orang-O-Tang',
          showDuration = false,
          position = 'top-right',
          style = {
            backgroundColor = '#141517',
            color = '#e9967a',
            ['.description'] = {
                color = '#909296'
            }
        },
          icon = 'a',
          iconColor = '#e9967a'
        })
    end)
    RegisterNetEvent('bd-upnatoms:server:makeHercules', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'atoms_carbonated_water', 2, false) then
          lib.notify(source, {
            id = 'upnatoms',
            title = 'Up-N-Atoms',
            description = 'You need 2x Carbonated Water to make Hercules',
            showDuration = false,
            position = 'top-right',
            style = {
              backgroundColor = '#141517',
              color = '#e9967a',
              ['.description'] = {
                  color = '#909296'
              }
          },
            icon = 'a',
            iconColor = '#e9967a'
          }) return end
        exports['qb-inventory']:AddItem(src, 'atoms_hercules', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_hercules'], 'add', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have made 2x Hercules',
          showDuration = false,
          position = 'top-right',
          style = {
            backgroundColor = '#141517',
            color = '#e9967a',
            ['.description'] = {
                color = '#909296'
            }
        },
          icon = 'a',
          iconColor = '#e9967a'
        })
    end)
    RegisterNetEvent('bd-upnatoms:server:makeJunkEnergy', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'atoms_carbonated_water', 2, false) then
          lib.notify(source, {
            id = 'upnatoms',
            title = 'Up-N-Atoms',
            description = 'You need 2x Carbonated Water to make Junk Energy',
            showDuration = false,
            position = 'top-right',
            style = {
              backgroundColor = '#141517',
              color = '#e9967a',
              ['.description'] = {
                  color = '#909296'
              }
          },
            icon = 'a',
            iconColor = '#e9967a'
          }) return end
        exports['qb-inventory']:AddItem(src, 'atoms_junk', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_junk'], 'add', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have made 2x Junk Energy',
          showDuration = false,
          position = 'top-right',
          style = {
            backgroundColor = '#141517',
            color = '#e9967a',
            ['.description'] = {
                color = '#909296'
            }
        },
          icon = 'a',
          iconColor = '#e9967a'
        })
    end)
    RegisterNetEvent('bd-upnatoms:server:makeRaineWater', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'atoms_raine', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_raine'], 'add', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have made 2x Raine Water',
          showDuration = false,
          position = 'top-right',
          style = {
            backgroundColor = '#141517',
            color = '#e9967a',
            ['.description'] = {
                color = '#909296'
            }
        },
          icon = 'a',
          iconColor = '#e9967a'
        })
    end)
    RegisterNetEvent('bd-upnatoms:server:makeWater', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'atoms_water', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_water'], 'add', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have made 2x Water',
          showDuration = false,
          position = 'top-right',
          style = {
            backgroundColor = '#141517',
            color = '#e9967a',
            ['.description'] = {
                color = '#909296'
            }
        },
          icon = 'a',
          iconColor = '#e9967a'
        })
    end)
end