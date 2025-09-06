fx_version 'cerulean'
game 'gta5'

name 'qb_wateroverride'
author 'ChatGPT'
description 'Water level override loader for tsunami flooding (normal/flood variants)'
version '1.0.1'

files {
    'water_normal.xml',
    'water_flood.xml'
}

server_script 'server.lua'

-- Use this manifest to run LIGHT FLOOD water
-- Enable ONE line that your build supports:
-- data_file 'WATER_FILE' 'water_flood.xml'
-- data_file 'WATER_XML_FILE' 'water_flood.xml'
