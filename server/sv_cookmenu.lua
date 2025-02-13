local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InventorySystem == 'ox' then
  ---------------------------------------------------- SANDWICHES AND SALADS ITEMS ------------------------------------------------------------------------------
  RegisterNetEvent('bd-upnatoms:server:makeSandwich', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_bread', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Bread to make Sandwich',
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
    ox_inventory:AddItem(src, 'atoms_sandwich', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Sandwiches',
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
  RegisterNetEvent('bd-upnatoms:server:makeChickenSandwich', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_bread', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Bread to make Chicken Sandwich',
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
    ox_inventory:AddItem(src, 'atoms_chicken_sandwich', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Chicken Sandwiches',
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
  RegisterNetEvent('bd-upnatoms:server:makeSalad', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_lettuce', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Lettuce to make Chicken Salad',
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
    ox_inventory:AddItem(src, 'atoms_chicken_salad', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Chicken Salads',
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
  ---------------------------------------------------- FRYER ITEMS ------------------------------------------------------------------------------
  RegisterNetEvent('bd-upnatoms:server:makeHashbrowns', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_potatos', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Potatos to make Hashbrowns',
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
    ox_inventory:AddItem(src, 'atoms_hashbrown', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Hashbrowns',
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
  RegisterNetEvent('bd-upnatoms:server:makeChickenFillets', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_raw_chicken', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Chicken to make Chicken Fillets',
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
    ox_inventory:AddItem(src, 'atoms_chicken_fillets', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Chicken Fillets',
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
  RegisterNetEvent('bd-upnatoms:server:makeChickenStars', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_raw_chicken', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Chicken to make Chicken Stars',
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
    ox_inventory:AddItem(src, 'atoms_chicken_stars', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Chicken Stars',
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
  ---------------------------------------------------- BREAKFAST ITEMS -------------------------------------------------------------------------------
  RegisterNetEvent('bd-upnatoms:server:makeBaconEggs', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_eggs', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Eggs to make Bacon N Eggs',
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
    ox_inventory:AddItem(src, 'atoms_bacon_eggs', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Bacon n Eggs',
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
  RegisterNetEvent('bd-upnatoms:server:makeBaconRolls', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_raw_bacon', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Bacon to make Bacon Rolls',
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
    ox_inventory:AddItem(src, 'atoms_bacon_rolls', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Bacon Rolls',
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
  RegisterNetEvent('bd-upnatoms:server:makeEggsBenedict', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_eggs', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Eggs to make Eggs Benedict',
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
    ox_inventory:AddItem(src, 'atoms_eggs_benedict', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Eggs Benedict',
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
  RegisterNetEvent('bd-upnatoms:server:makeEggsFlorentine', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_eggs', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Eggs to make Eggs Florentine',
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
    ox_inventory:AddItem(src, 'atoms_eggs_florentine', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Eggs Florentine',
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
  RegisterNetEvent('bd-upnatoms:server:makeBaconFrenchToast', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_raw_bacon', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Bacon to make Bacon French Toast',
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
    ox_inventory:AddItem(src, 'atoms_french_toast_bacon', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Bacon French Toast',
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
  RegisterNetEvent('bd-upnatoms:server:makeSausages', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_frozen_sausages', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Frozen Sausages to make Sausages',
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
    ox_inventory:AddItem(src, 'atoms_sausages', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Sausages',
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
  RegisterNetEvent('bd-upnatoms:server:makeBaconBurger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_raw_beef_patty', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Beef Pattys to make Bacon Cheese Burger',
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
    ox_inventory:AddItem(src, 'atoms_bacon_burger', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Bacon Cheese Burger',
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
  RegisterNetEvent('bd-upnatoms:server:makeBurger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_raw_beef_patty', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Beef Pattys to make Cheese Burger',
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
    ox_inventory:AddItem(src, 'atoms_burger', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Cheese Burger',
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
  RegisterNetEvent('bd-upnatoms:server:makeChickenBurger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_raw_chicken_patty', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Chicken Pattys to make Chicken Burger',
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
    ox_inventory:AddItem(src, 'atoms_chicken_burger', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Chicken Burger',
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
  RegisterNetEvent('bd-upnatoms:server:makeDoubleBurger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_raw_beef_patty', 4, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 4x Raw Beef Pattys to make Double Cheese Burger',
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
    ox_inventory:AddItem(src, 'atoms_db_burger', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Double Cheese Burger',
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
  RegisterNetEvent('bd-upnatoms:server:makeDoubleChickenBurger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_raw_chicken_patty', 4, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 4x Raw Chicken Pattys to make Double Chicken Burger',
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
    ox_inventory:AddItem(src, 'atoms_db_chicken_burger', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Double Chicken Burger',
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
  RegisterNetEvent('bd-upnatoms:server:makePickleBurger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_pickles', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Pickles to make Pickle Burger',
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
    ox_inventory:AddItem(src, 'atoms_pickle_burger', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Pickle Burger',
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
  RegisterNetEvent('bd-upnatoms:server:makeHunksOHen', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_raw_chicken', 4, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 4x Raw Chicken to make Hunks-O-Hen',
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
    ox_inventory:AddItem(src, 'atoms_hunk_o_hen', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Hunks-O-Hen',
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
  RegisterNetEvent('bd-upnatoms:server:makeGrilledChicken', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'atoms_raw_chicken', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Chicken to make Grilled Chicken',
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
    ox_inventory:AddItem(src, 'atoms_grilled_chicken', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Grilled Chicken',
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
  ---------------------------------------------------- SANDWICHES AND SALADS ITEMS ------------------------------------------------------------------------------
    RegisterNetEvent('bd-upnatoms:server:makeSandwich', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'atoms_bread', 2, false) then
          lib.notify(source, {
            id = 'upnatoms',
            title = 'Up-N-Atoms',
            description = 'You need 2x Bread to make Sandwich',
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
        exports['qb-inventory']:AddItem(src, 'atoms_sandwich', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_sandwich'], 'add', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have made 2x Sandwiches',
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
    RegisterNetEvent('bd-upnatoms:server:makeChickenSandwich', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'atoms_bread', 2, false) then
          lib.notify(source, {
            id = 'upnatoms',
            title = 'Up-N-Atoms',
            description = 'You need 2x Bread to make Chicken Sandwich',
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
        exports['qb-inventory']:AddItem(src, 'atoms_chicken_sandwich', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_chicken_sandwich'], 'add', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have made 2x Chicken Sandwiches',
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
    RegisterNetEvent('bd-upnatoms:server:makeSalad', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'atoms_lettuce', 2, false) then
          lib.notify(source, {
            id = 'upnatoms',
            title = 'Up-N-Atoms',
            description = 'You need 2x Lettuce to make Chicken Salad',
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
        exports['qb-inventory']:AddItem(src, 'atoms_chicken_salad', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_chicken_salad'], 'add', 2)
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You have made 2x Chicken Salad',
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
    ---------------------------------------------------- FRYER ITEMS ------------------------------------------------------------------------------
    RegisterNetEvent('bd-upnatoms:server:makeHashbrowns', function()
      local src = source
      local Player = QBCore.Functions.GetPlayer(src)
      if not Player then return end
      if not exports['qb-inventory']:RemoveItem(src, 'atoms_potatos', 2, false) then
        lib.notify(source, {
          id = 'upnatoms',
          title = 'Up-N-Atoms',
          description = 'You need 2x Potatos to make Hashbrowns',
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
      exports['qb-inventory']:AddItem(src, 'atoms_hashbrown', 2, false, false)
      TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_hashbrown'], 'add', 2)
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You have made 2x Hashbrowns',
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
  RegisterNetEvent('bd-upnatoms:server:makeChickenFillets', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_raw_chicken', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Chicken to make Chicken Fillets',
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
    exports['qb-inventory']:AddItem(src, 'atoms_chicken_fillets', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_chicken_fillets'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Chicken Fillets',
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
  RegisterNetEvent('bd-upnatoms:server:makeChickenStars', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_raw_chicken', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Chicken to make Chicken Stars',
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
    exports['qb-inventory']:AddItem(src, 'atoms_chicken_stars', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_chicken_stars'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Chicken Stars',
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
  ---------------------------------------------------- BREAKFAST ITEMS ------------------------------------------------------------------------------
  RegisterNetEvent('bd-upnatoms:server:makeBaconEggs', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_eggs', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Eggs to make Bacon N Eggs',
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
    exports['qb-inventory']:AddItem(src, 'atoms_bacon_eggs', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_bacon_eggs'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Bacon N Eggs',
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
  RegisterNetEvent('bd-upnatoms:server:makeBaconRolls', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_raw_bacon', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Bacon to make Bacon Rolls',
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
    exports['qb-inventory']:AddItem(src, 'atoms_bacon_rolls', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_bacon_rolls'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Bacon Rolls',
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
  RegisterNetEvent('bd-upnatoms:server:makeEggsBenedict', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_eggs', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Eggs to make Eggs Benedict',
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
    exports['qb-inventory']:AddItem(src, 'atoms_eggs_benedict', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_eggs_benedict'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Eggs Benedict',
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
  RegisterNetEvent('bd-upnatoms:server:makeEggsFlorentine', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_eggs', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Eggs to make Eggs Florentine',
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
    exports['qb-inventory']:AddItem(src, 'atoms_eggs_florentine', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_eggs_florentine'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Eggs Florentine',
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
  RegisterNetEvent('bd-upnatoms:server:makeBaconFrenchToast', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_raw_bacon', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Bacon to make Bacon French Toast',
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
    exports['qb-inventory']:AddItem(src, 'atoms_french_toast_bacon', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_french_toast_bacon'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Bacon French Toast',
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
  RegisterNetEvent('bd-upnatoms:server:makeSausages', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_frozen_sausages', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Frozen Sausages to make Sausages',
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
    exports['qb-inventory']:AddItem(src, 'atoms_sausages', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_sausages'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Sausages',
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
  ---------------------------------------------------- BURGER ITEMS ------------------------------------------------------------------------------
  RegisterNetEvent('bd-upnatoms:server:makeBaconBurger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_raw_beef_patty', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Beef Patty to make Bacon Cheese Burger',
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
    exports['qb-inventory']:AddItem(src, 'atoms_bacon_burger', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_bacon_burger'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Bacon Cheese Burgers',
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
  RegisterNetEvent('bd-upnatoms:server:makeBurger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_raw_beef_patty', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Beef Patty to make Cheese Burger',
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
    exports['qb-inventory']:AddItem(src, 'atoms_burger', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_burger'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Cheese Burgers',
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
  RegisterNetEvent('bd-upnatoms:server:makeChickenBurger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_raw_chicken_patty', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Chicken Patty to make Chicken Burger',
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
    exports['qb-inventory']:AddItem(src, 'atoms_chicken_burger', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_chicken_burger'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Chicken Burgers',
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
  RegisterNetEvent('bd-upnatoms:server:makeDoubleBurger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_raw_beef_patty', 4, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 4x Raw Beef Patty to make Double Cheese Burger',
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
    exports['qb-inventory']:AddItem(src, 'atoms_db_burger', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_db_burger'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Double Cheese Burgers',
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
  RegisterNetEvent('bd-upnatoms:server:makeDoubleChickenBurger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_raw_chicken_patty', 4, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 4x Raw Chicken Patty to make Double Chicken Burger',
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
    exports['qb-inventory']:AddItem(src, 'atoms_db_chicken_burger', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_db_chicken_burger'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Double Chicken Burgers',
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
  RegisterNetEvent('bd-upnatoms:server:makePickleBurger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_pickles', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Pickles to make Pickle Burger',
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
    exports['qb-inventory']:AddItem(src, 'atoms_pickle_burger', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_pickle_burger'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Pickle Burgers',
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
  RegisterNetEvent('bd-upnatoms:server:makeHunksOHen', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_raw_chicken', 4, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 4x Raw Chicken to make Hunk-O-Hen',
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
    exports['qb-inventory']:AddItem(src, 'atoms_hunk_o_hen', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_hunk_o_hen'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Hunk-O-Hen',
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
  RegisterNetEvent('bd-upnatoms:server:makeGrilledChicken', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'atoms_raw_chicken', 2, false) then
      lib.notify(source, {
        id = 'upnatoms',
        title = 'Up-N-Atoms',
        description = 'You need 2x Raw Chicken to make Grilled Chicken',
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
    exports['qb-inventory']:AddItem(src, 'atoms_grilled_chicken', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['atoms_grilled_chicken'], 'add', 2)
    lib.notify(source, {
      id = 'upnatoms',
      title = 'Up-N-Atoms',
      description = 'You have made 2x Grilled Chicken',
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