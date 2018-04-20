require_relative 'logic'

require 'sinatra'
require 'sinatra/reloader' if development?
require 'json'

# TODO: Dockerize this

log = Logic.logger

get '/api/points/?' do
  log.debug 'get called on /api/points'
  Logic.all_points
end

post '/api/points/?' do
  log.debug 'post called on /api/points'
  request.body.rewind # in case someone already read it
  data = JSON.parse request.body.read
  log.debug data.to_s

  Logic.update_points data['team'], data['points']
end
