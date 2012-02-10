{spawn, exec} = require 'child_process'
print = (data) -> console.log data.toString()

option '-p', '--port [PORT]', 'run server with given port'

task 'server', 'Start application server', (options) ->
  port = options.port or 3000

  server = spawn 'coffee', ['server.coffee'], { env: {PORT: port } }
  server.stdout.on 'data', print
  server.stderr.on 'data', print
