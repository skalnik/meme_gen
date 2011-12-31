exports.actions = (app, argv, options) ->
  app.get '/', (req, res) ->
    res.json {response: 'Success!'}, 200
