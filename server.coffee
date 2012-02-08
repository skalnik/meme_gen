express = require 'express'

app = express.createServer();

routes = require('./routes')(app)

app.configure ->
  app.use express.logger()
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use app.router

app.configure 'development', ->
  app.use express.errorHandler({ dumpExceptions: true, showStack: true })

app.configure 'production', ->
  app.use express.errorHandler()

port = process.env.PORT || 3000

app.listen port, ->
  console.log "Listening on #{port}"
