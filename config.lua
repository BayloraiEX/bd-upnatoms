--[[
  ____              _                 _                       
 | __ )  __ _ _   _| | ___  _ __ __ _(_)                      
 |  _ \ / _` | | | | |/ _ \| '__/ _` | |                      
 | |_) | (_| | |_| | | (_) | | | (_| | |                      
 |____/ \__,_|\__, |_|\___/|_|  \__,_|_|                  _   
 |  _ \  _____|___/___| | ___  _ __  _ __ ___   ___ _ __ | |_ 
 | | | |/ _ \ \ / / _ \ |/ _ \| '_ \| '_ ` _ \ / _ \ '_ \| __|
 | |_| |  __/\ V /  __/ | (_) | |_) | | | | | |  __/ | | | |_ 
 |____/ \___| \_/ \___|_|\___/| .__/|_| |_| |_|\___|_| |_|\__|
                              |_|                             
--]]
Config = {}
----- | SYSTEM STUFF | -----
Config.TargetSystem = 'qb' -- Supports 'qb' & 'ox' & 'codem'
Config.InventorySystem = 'qb' -- Supports 'qb' & 'ox'
Config.Jobname = 'upnatoms' -- Match jobname in jobs.lua
----- | VEHICLE STUFF | -----
Config.VehicleSpawn = vector4(95.28, 307.26, 110.02, 172.28)
Config.Vehicle = 'upnatomsvan' -- Custom Vehicle That Comes With Script
----- | PED STUFF | -----
Config.upnatomsGaragePed = {
    {
        upnatomsGaragePedModel = 'mp_m_waremech_01',
        upnatomsGaragePedLocation = vector4(92.37, 297.58, 109.21, 342.74),
        upnatomsGarageRenderDistance = 20,
    }
}
----- | SHOP STUFF | -----
Config.Items = {
    { name = 'atoms_raw_beef_patty', amount = 50, price = 1 },
    { name = 'atoms_raw_chicken_patty', amount = 50, price = 1 },
    { name = 'atoms_raw_chicken', amount = 50, price = 1 },
    { name = 'atoms_raw_bacon', amount = 50, price = 1 },
    { name = 'atoms_frozen_sausages', amount = 50, price = 1 },
    { name = 'atoms_pickles', amount = 50, price = 1 },
    { name = 'atoms_potatos', amount = 50, price = 1 },
    { name = 'atoms_eggs', amount = 50, price = 1 },
    { name = 'atoms_lettuce', amount = 50, price = 1 },
    { name = 'atoms_bread', amount = 50, price = 1 },
    { name = 'atoms_carbonated_water', amount = 50, price = 1 },
    { name = 'atoms_sugar_cubes', amount = 50, price = 1 },
    { name = 'atoms_oranges', amount = 50, price = 1 },
}
