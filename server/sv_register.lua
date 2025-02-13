local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('bd-upnatoms:server:billPlayer', function(playerId, amount)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
    if biller.PlayerData.job.name == Config.Jobname then
        if billed ~= nil then
            if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                if amount and amount > 0 then
                billed.Functions.RemoveMoney('bank', amount)
                lib.notify(source, {
                    id = 'upnatoms',
                    title = 'Up-N-Atoms',
                    description = 'You charged a customer.',
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
                lib.notify(billed.PlayerData.source, {
                    id = 'upnatoms',
                    title = 'Up-N-Atoms',
                    description = 'You have been charged $'..amount..' for your order.',
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
            exports['qb-banking']:AddMoney('upnatoms', amount, 'Sale')
                else
                    lib.notify(source, {
                        id = 'upnatoms',
                        title = 'Up-N-Atoms',
                        description = 'Must be a valid amount above 0.',
                        showDuration = false,
                        position = 'top',
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
                end
            else
                lib.notify(source, {
                    id = 'upnatoms',
                    title = 'Up-N-Atoms',
                    description = 'You cannot bill yourself',
                    showDuration = false,
                    position = 'top',
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
            end
        else
            lib.notify(source, {
                id = 'upnatoms',
                title = 'Up-N-Atoms',
                description = 'Player not online',
                showDuration = false,
                position = 'top',
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
        end
    end
end)