css_pipeline = require 'css-pipeline'
browserify   = require 'roots-browserify'
contentful   = require 'roots-contentful'
config       = require './contentful'
marked       = require 'marked'
sass         = require 'node-sass'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    browserify
        files: 'assets/js/main.coffee',
        out: 'js/main.js'
    css_pipeline
        files: 'assets/css/main.scss',
        out: 'css/main.css'
        # minify: true
    contentful(config)
  ]

  sass:
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true

  server:
    clean_urls: true

  locals:
    markdown: marked