var files = [
    "/utilities/utilities.coffee",

    "/main.coffee",

    "/loaders/basic.coffee"
]

var src_dir = "src";

files.forEach(function(path, i) {
    files[i] = src_dir + path;
});

module.exports = function (grunt) {
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        uglify: {
            js: {
                files: {
                    'game/bin/knights.min.js': ['game/bin/knights.js']
                }
            }
        },
        coffee: {
            compileDebug: {
                expand: true,
                flatten: true,
                cwd: 'src',
                src: ['*.coffee'],
                dest: 'debug/',
                ext: '.js'
            },
            compileJoined: {
                options: {
                    join: true
                },
                files: {
                    'game/bin/knights.js': files
                }
            },
        },
        copy: {
            main: {
                files: [{
                    expand: false,
                    src: ['node_modules/pixi.js/bin/pixi.min.js'],
                    dest: 'game/lib/pixi.min.js',
                    filter: 'isFile'
                }],
            },
        },
        watch: {
            files: ['src/**'],
            tasks: ['coffee', 'uglify']
        }
    });
    grunt.loadNpmTasks('grunt-contrib-coffee');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-copy');
    grunt.registerTask('default', [
        'coffee:compileJoined',
        'uglify:js'
    ]);
    grunt.registerTask('debug', [
        'coffee:compileDebug'
    ]);
    grunt.registerTask('build', [
        'coffee:compileJoined',
        'uglify:js',
        'copy:main'
    ]);
};
