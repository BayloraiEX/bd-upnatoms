fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'Baylorai Development'
description 'QBCore Up N Atoms Job using ox_lib'
version '0.0.1'

shared_scripts {
	'@ox_lib/init.lua',
	'config.lua'
}

client_script {
	'client/*.lua'
}

server_script 'server/*.lua'

files {
	'vehicle/carvariations.meta',
	'vehicle/handling.meta',
	'vehicle/vehicles.meta',
	'vehicle/*.meta',
}
data_file 'HANDLING_FILE'           'vehicle/handling.meta'
data_file 'CARCOLS_FILE'            'vehicle/carcols*.meta'
data_file 'VEHICLE_METADATA_FILE'   'vehicle/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE'  'vehicle/carvariations.meta'
data_file 'DLCTEXT_FILE'            'vehicle/dlctext.meta'
