fx_version 'cerulean'
game 'gta5'
name 'qb_wateroverride'
author 'ChatGPT'
description 'Template water level override loader for tsunami flooding (swap water XMLs by restarting this resource)'
version '1.0.0'

-- IMPORTANT:
-- FiveM water XML support depends on game build and artifacts. The data_file directive and XML schema
-- vary by build. This template shows the typical pattern used by flooding scripts.
-- Replace the data_file line below with the correct type for your build (e.g., 'WATER_FILE' or 'WATER_XML_FILE'),
-- and ensure your water XMLs are valid for your artifact.

files {
    'water_normal.xml',
    'water_flood.xml',
    'water_max.xml'
}

-- One of these should be active at a time. Choose via a Convar at startup.
-- By default, we register 'water_normal.xml'. To switch, stop this resource, set the convar and start again.
-- Example convars (server.cfg):
--   setr qbwater:phase normal   # default
--   setr qbwater:phase flood
--   setr qbwater:phase max

-- NOTE: Uncomment ONE of the following lines appropriate to your build after you verify the correct type:
-- data_file 'WATER_FILE' 'water_normal.xml'
-- data_file 'WATER_FILE' 'water_flood.xml'
-- data_file 'WATER_FILE' 'water_max.xml'

server_script 'server.lua'
