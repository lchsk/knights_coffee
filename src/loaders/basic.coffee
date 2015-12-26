basic_loader = new PIXI.loaders.Loader()

config = null

basic_loader_complete = (loader, resources) ->
    if resources.config.error?
        print 'Loading config.json failed'
    else
        config = resources.config.data

    animate()


basic_loader.add 'config', 'json/config.json'

basic_loader.once 'complete', basic_loader_complete
basic_loader.load()
