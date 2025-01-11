fx_version 'cerulean'
game 'gta5'

name 'Sunset Vehicle Spawner'
author 'Sunset_Nathan'
description 'Sunset Vehicle Spawner - A clean Vehicle spawner for FiveM with Custom license plates and plate colours.'
version '1.0.0'

-- Server Side --
server_scripts {
    'server/server.lua'
}

-- Client Side --
client_scripts {
    'client/client.lua'
}



-- All you need to do is type into the chat a put this /spawn [vehcle name] [Licence Plate] [Licence Plate colour] --
   -- The Licents plate colours are here: --
 --   black → 1 (Black and Yellow)--
 --   white → 0 (White) --
 --   blue → 2 (Blue) --
 --   yellow → 3 (Yellow on Blue) --

-- Your Licence plate can be whatever you want it as and it will spaw in the vehicle with the Licence Plate and Licence Plate colour --
-- off your chose --

-- For example --
-- If you want to spawn in a T20 with a Licence Plate aying GPT456 and you want the plate to be Black and Yellow this is how you would spawn it in --
-- /spawn t20 GPT456 black --
-- and it will spawn in for you --
