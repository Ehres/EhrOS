###
  Module dependencies.
###

express = require 'express'
http    = require 'http'
path    = require 'path'
less    = require 'less-middleware'
config	= require './config'

server = express()

###
  All environments
###
server.set 'port', process.env.PORT or config.port
server.set 'views', __dirname + "/views"
server.set 'view engine', 'jade'
server.use express.favicon()
server.use express.logger('dev')
server.use express.bodyParser()
server.use express.methodOverride()
server.use express.json()
server.use express.urlencoded()
server.use server.router
server.use less { src: path.join(__dirname, 'public') }
server.use express.static path.join(__dirname, 'public')

#development only
if 'development' == server.get 'env'
  server.use express.errorHandler()

###
	Define routes
###
server.get "/", (req, res) ->
  res.render "index"

# All partials. This is used by Angular.
server.get "/partials/:name", (req, res) ->
  name = req.params.name
  res.render "partials/" + name

###
	Startup and log.
###

http.createServer(server).listen server.get("port"), ->
  console.log "Express server listening on port " + server.get("port")