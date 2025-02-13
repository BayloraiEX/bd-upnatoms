# BD-UPNATOMS
# QBCORE Up-N-Atoms Job Using ox_lib
 Join the Discord for support or questions!
 DISCORD https://discord.gg/hya9t8XfH8
 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
# MLO
Using Gabz Paid MLO for Up n Atom you can find it here: https://fivem.gabzv.com/package/5567767
# SIMPLE AND EAZY SETUP!
Drag bd-upnatoms into your resources folder and ensure bd-upnatoms AFTER YOUR TARGET AND INVENTORY SCRIPTS
Example:
- ensure [qb]
- ensure bd-upnatoms
END OF EXAMPLE:
# QBCORE SETUP
# Items
Copy and Paste into qb-core --> shared --> items.lua
```
-- Up N Atoms --
    atoms_raw_beef_patty 		    = { name = 'atoms_raw_beef_patty', 	   label = 'Beef Patty', 			weight = 150, 		type = 'item', 		image = 'atoms_raw_beef_patty.png', 		unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
    atoms_raw_chicken_patty 		= { name = 'atoms_raw_chicken_patty',  label = 'Frozen Chicken Patty', 	weight = 150, 		type = 'item', 		image = 'atoms_raw_chicken_patty.png', 		unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
    atoms_raw_chicken 			 	= { name = 'atoms_raw_chicken', 	   label = 'Frozen Chicken', 		weight = 150, 		type = 'item', 		image = 'atoms_raw_chicken.png', 		    unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
    atoms_raw_bacon 			= { name = 'atoms_raw_bacon',    label = 'Frozen Bacon', 		weight = 150, 		type = 'item', 		image = 'atoms_raw_bacon.png', 		unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
    atoms_frozen_sausages 			= { name = 'atoms_frozen_sausages',    label = 'Frozen Sausage', 		weight = 150, 		type = 'item', 		image = 'atoms_frozen_sausages.png', 		unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
    atoms_bread 			 	= { name = 'atoms_bread', 	   label = 'Fresh Bread', 		weight = 150, 		type = 'item', 		image = 'atoms_bread.png', 		    unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
    atoms_lettuce 			 	= { name = 'atoms_lettuce', 	   label = 'Fresh Lettuce', 		weight = 150, 		type = 'item', 		image = 'atoms_lettuce.png', 		    unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
    atoms_eggs 			 	= { name = 'atoms_eggs', 	   label = 'Fresh Eggs', 		weight = 150, 		type = 'item', 		image = 'atoms_eggs.png', 		    unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
    atoms_pickles 			 	    = { name = 'atoms_pickles', 	       label = 'Fresh Pickles', 		weight = 150, 		type = 'item', 		image = 'atoms_pickles.png', 		    unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
    atoms_potatos 			 	    = { name = 'atoms_potatos', 	       label = 'Fresh Potatos', 		weight = 150, 		type = 'item', 		image = 'atoms_potatos.png', 		    unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
    atoms_carbonated_water 			 	= { name = 'atoms_carbonated_water', 	   label = 'Carbonated Water', 		weight = 150, 		type = 'item', 		image = 'atoms_carbonated_water.png', 		    unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
    atoms_sugar_cubes 			 	= { name = 'atoms_sugar_cubes', 	   label = 'Sugar Cubes', 		weight = 150, 		type = 'item', 		image = 'atoms_sugar_cubes.png', 		    unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
    atoms_oranges 			 	= { name = 'atoms_oranges', 	   label = 'Oranges', 		weight = 150, 		type = 'item', 		image = 'atoms_oranges.png', 		    unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
    -- Breakfast Items --
    atoms_bacon_eggs                 = { name = 'atoms_bacon_eggs',          label = 'Atoms Bacon n Eggs',         weight = 200,       type = 'item',      image = 'atoms_bacon_eggs.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Bacon N Eggs'},
    atoms_bacon_rolls                 = { name = 'atoms_bacon_rolls',          label = 'Atoms Bacon Rolls',         weight = 200,       type = 'item',      image = 'atoms_bacon_rolls.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Bacon Rolls'},
    atoms_eggs_benedict                 = { name = 'atoms_eggs_benedict',          label = 'Atoms Eggs Benedict',         weight = 200,       type = 'item',      image = 'atoms_eggs_benedict.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Eggs Benedict'},
    atoms_eggs_florentine                 = { name = 'atoms_eggs_florentine',          label = 'Atoms Eggs Florentine',         weight = 200,       type = 'item',      image = 'atoms_eggs_florentine.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Eggs Florentine'},
    atoms_french_toast_bacon                 = { name = 'atoms_french_toast_bacon',          label = 'Atoms Bacon French Toast',         weight = 200,       type = 'item',      image = 'atoms_french_toast_bacon.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made French Toast With Bacon'},
    atoms_hashbrown                 = { name = 'atoms_hashbrown',          label = 'Atoms Hashbrowns',         weight = 200,       type = 'item',      image = 'atoms_hashbrown.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Hashbrowns'},
    atoms_sausages                 = { name = 'atoms_sausages',          label = 'Atoms Sausages',         weight = 200,       type = 'item',      image = 'atoms_sausages.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Sausages'},
    -- Burger Items --
    atoms_bacon_burger                 = { name = 'atoms_bacon_burger',          label = 'Atoms Bacon Burger',         weight = 200,       type = 'item',      image = 'atoms_bacon_burger.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Bacon Cheese Burger'},
    atoms_burger                 = { name = 'atoms_burger',          label = 'Atoms Burger',         weight = 200,       type = 'item',      image = 'atoms_burger.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Cheese Burger'},
    atoms_chicken_burger                 = { name = 'atoms_chicken_burger',          label = 'Atoms Chicken Burger',         weight = 200,       type = 'item',      image = 'atoms_chicken_burger.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Chicken Burger'},
    atoms_db_burger                 = { name = 'atoms_db_burger',          label = 'Atoms Double Burger',         weight = 200,       type = 'item',      image = 'atoms_db_burger.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Double Cheese Burger'},
    atoms_db_chicken_burger                 = { name = 'atoms_db_chicken_burger',          label = 'Atoms Double Chicken Burger',         weight = 200,       type = 'item',      image = 'atoms_db_chicken_burger.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Double Chicken Burger'},
    atoms_pickle_burger                 = { name = 'atoms_pickle_burger',          label = 'Atoms Pickle Burger',         weight = 200,       type = 'item',      image = 'atoms_pickle_burger.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Pickle Burger'},
    atoms_sandwich                 = { name = 'atoms_sandwich',          label = 'Atoms Sandwich',         weight = 200,       type = 'item',      image = 'atoms_sandwich.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Sandwich'},
    -- Chicken Items --
    atoms_chicken_fillets                 = { name = 'atoms_chicken_fillets',          label = 'Atoms Chicken Fillets',         weight = 200,       type = 'item',      image = 'atoms_chicken_fillets.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Chicken Fillets'},
    atoms_chicken_salad                 = { name = 'atoms_chicken_salad',          label = 'Atoms Chicken Salad',         weight = 200,       type = 'item',      image = 'atoms_chicken_salad.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Chicken Salad'},
    atoms_chicken_sandwich                 = { name = 'atoms_chicken_sandwich',          label = 'Atoms Chicken Sandwich',         weight = 200,       type = 'item',      image = 'atoms_chicken_sandwich.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Chicken Sandwich'},
    atoms_chicken_stars                 = { name = 'atoms_chicken_stars',          label = 'Atoms Chicken Stars',         weight = 200,       type = 'item',      image = 'atoms_chicken_stars.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Chicken Stars'},
    atoms_grilled_chicken                 = { name = 'atoms_grilled_chicken',          label = 'Atoms Grilled Chicken',         weight = 200,       type = 'item',      image = 'atoms_grilled_chicken.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Grilled Chicken'},
    atoms_hunk_o_hen                 = { name = 'atoms_hunk_o_hen',          label = 'Atoms Hunks-O-Hen',         weight = 200,       type = 'item',      image = 'atoms_hunk_o_hen.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Freshly Made Hunks-O-Hen'},
    -- Drink Items --
    atoms_ecola                 = { name = 'atoms_ecola',          label = 'Atoms Ecola',         weight = 200,       type = 'item',      image = 'atoms_ecola.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Ice Cold Ecola'},
    atoms_hercules                 = { name = 'atoms_hercules',          label = 'Atoms Hercules',         weight = 200,       type = 'item',      image = 'atoms_hercules.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Ice Cold Hercules'},
    atoms_junk                 = { name = 'atoms_junk',          label = 'Atoms Junk Energy',         weight = 200,       type = 'item',      image = 'atoms_junk.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Ice Cold Junk'},
    atoms_orangtang                 = { name = 'atoms_orangtang',          label = 'Atoms Orang-O-Tang',         weight = 200,       type = 'item',      image = 'atoms_orangtang.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Ice Cold Orang-O-Tang'},
    atoms_raine                 = { name = 'atoms_raine',          label = 'Atoms Raine',         weight = 200,       type = 'item',      image = 'atoms_raine.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Ice Cold Raine'},
    atoms_sprunk                 = { name = 'atoms_sprunk',          label = 'Atoms Sprunk',         weight = 200,       type = 'item',      image = 'atoms_sprunk.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Ice Cold Sprunk'},
    atoms_water                 = { name = 'atoms_water',          label = 'Atoms Water',         weight = 200,       type = 'item',      image = 'atoms_water.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Ice Cold Water'},
```
# JOB
Copy and Paste into qb-core --> shared --> jobs.lua
```
upnatoms = {
		label = 'Up-N-Atoms',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Janitor', payment = 30 },
			['1'] = { name = 'Employee', payment = 40 },
			['2'] = { name = 'Sr-Employee', payment = 50 },
			['3'] = { name = 'Ast-Manager', payment = 60 },
			['4'] = { name = 'Manager', isboss = true, payment = 75 },
			['5'] = { name = 'CEO', isboss = true, payment = 90 },
		},
	},
```
# CONSUMABLES
Copy and Paste into qb-smallresources --> config.lua
```
FOOD ITEMS
-- Up N Atoms Items --
        -- Breakfast --
        ['atoms_bacon_eggs'] = math.random(45, 65),
        ['atoms_bacon_rolls'] = math.random(45, 65),
        ['atoms_eggs_benedict'] = math.random(45, 65),
        ['atoms_eggs_florentine'] = math.random(45, 65),
        ['atoms_french_toast_bacon'] = math.random(45, 65),
        ['atoms_hashbrown'] = math.random(45, 65),
        ['atoms_sausages'] = math.random(45, 65),
        -- Burgers --
        ['atoms_bacon_burger'] = math.random(45, 65),
        ['atoms_burger'] = math.random(45, 65),
        ['atoms_chicken_burger'] = math.random(45, 65),
        ['atoms_db_burger'] = math.random(45, 65),
        ['atoms_db_chcken_burger'] = math.random(45, 65),
        ['atoms_pickle_burger'] = math.random(45, 65),
        ['atoms_sandwich'] = math.random(45, 65),
        -- Chicken --
        ['atoms_chicken_fillets'] = math.random(45, 65),
        ['atoms_chicken_salad'] = math.random(45, 65),
        ['atoms_chicken_sandwich'] = math.random(45, 65),
        ['atoms_chicken_stars'] = math.random(45, 65),
        ['atoms_grilled_chicken'] = math.random(45, 65),
        ['atoms_hunk_o_hen'] = math.random(75, 100),
DRINK ITEMS
-- UP N ATOMS ITEMS --
        ['atoms_ecola'] = math.random(60, 80),
        ['atoms_junk'] = math.random(60, 80),
        ['atoms_orangtang'] = math.random(60, 80),
        ['atoms_sprunk'] = math.random(60, 80),
        ['atoms_water'] = math.random(60, 80),
        ['atoms_raine'] = math.random(60, 80),
        ['atoms_hercules'] = math.random(60, 80),
```
# IMAGES
Take all of the photos in the images folder and put into qb-inventory --> html --> images
And your all set!
