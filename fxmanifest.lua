-- fxmanifest.lua
fx_version 'cerulean'
game 'gta5'

author '✘'
description 'Skripta za popunjavanje sef oružjem i itemima i obaveštavanje igrača koristeći ox_lib i ox_inventory'
version '1.0.0'

-- Dependencies
dependencies {
    'ox_inventory',
    'ox_lib'
}

server_scripts {
    'server.lua'
}

client_scripts {
    'client.lua'
}