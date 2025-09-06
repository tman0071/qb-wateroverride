fx_version 'cerulean'
game 'gta5'

name 'qb_wateroverride'
author 'ChatGPT'
description 'Water level override loader (max flood variant)'
version '1.0.2'

files {
    'water_max.xml'
}

server_script 'server.lua'

-- Use this manifest to run MAX FLOOD water
-- Enable ONE line that your build supports:
-- data_file 'WATER_FILE' 'water_max.xml'
-- data_file 'WATER_XML_FILE' 'water_max.xml'
