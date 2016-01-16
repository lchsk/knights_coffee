GameLoading =
    preload: ->
        game.load.json('config', 'json/config.json')
        game.state.start('LoadingScreen')

LoadingScreen =
    preload: ->
        game.load.json('knights_characters', 'json/knights.characters.json')

    create: ->
        print 'load create'
        game.state.start('GameScreen')

MainMenu =
    preload: ->
        print 'hello MainMenu'

GameScreen =
    preload: ->
        game.load.spritesheet('knights_archer_walk', 'assets/knights/characters/knights_archer_walk.png', 64, 64)
    create: ->
        sprite = game.add.sprite(576, 256, 'knights_archer_walk')
        sprite.animations.add('walk', [1, 2, 3, 4, 5, 6, 7, 8])
        sprite.animations.play('walk', 15, true)
        # sprite.scale.set(1)
        # sprite.smoothed = false
        sprite.loadTexture('knights_archer_walk', 0, false)

game = new Phaser.Game(800, 600, Phaser.AUTO, 'knights')
game.state.add('GameLoading', GameLoading)
game.state.add('LoadingScreen', LoadingScreen)
game.state.add('MainMenu', MainMenu)
game.state.add('GameScreen', GameScreen)

game.state.start('GameLoading')
