
ASSETS_PATH = "assets/"

assets = [
    name: "knights_archer_walk"
    path: "knights/characters/knights_archer_walk.png"
    width: 576
    height: 256
    tile_width: 64
    tile_height: 64
]
# load_characters_file = (json) ->
#     for file_info in json['files']
#         assets[file_info['name']] = file_info
# 
do_load_assets = ->

    for asset_info in assets
        filename = asset_info['name']

        game.load.spritesheet(
            filename,
            ASSETS_PATH + asset_info.path,
            asset_info.tile_width,
            asset_info.tile_height
        )

# load_assets = (group) ->
#     print 'loading ' + group
# 
#     load_characters_file game.cache.getJSON('knights_characters')
#     do_load_assets()
