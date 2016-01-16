
# ASSETS_PATH = "assets/"
# 
# assets = {}
# 
# load_characters_file = (json) ->
#     for file_info in json['files']
#         assets[file_info['name']] = file_info
# 
# do_load_assets = ->
#     for own filename of assets
#         # print filename
#         # print ASSETS_PATH + assets[filename]['path']
#         # print game
# 
#         game.load.spritesheet(
#             filename,
#             ASSETS_PATH + assets[filename]['path'],
#             assets[filename]['tile_width'],
#             assets[filename]['tile_height']
#         )

# load_assets = (group) ->
#     print 'loading ' + group
# 
#     load_characters_file game.cache.getJSON('knights_characters')
#     do_load_assets()
