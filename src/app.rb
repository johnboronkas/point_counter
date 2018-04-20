require_relative 'log'
require_relative 'logic'

require 'sinatra'
require 'sinatra/reloader' if development?
require 'json'

# TODO: Dockerize this

log = Log.logger

get '/api/points/?' do
  log.debug 'get called on /api/points'
  JSON.generate(Logic.all_points)
end

post '/api/points/?' do
  log.debug 'post called on /api/points'
  request.body.rewind # in case someone already read it
  data = JSON.parse request.body.read
  log.debug data.to_s

  JSON.generate(Logic.update_points(data['team'], data['points']))
end
