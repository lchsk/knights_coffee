renderer = new PIXI.autoDetectRenderer WIN.w, WIN.h

document.body.appendChild renderer.view

stage = new PIXI.Container()

animate = ->
    requestAnimationFrame animate

    renderer.render stage
