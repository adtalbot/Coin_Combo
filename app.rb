require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/cents') do
  user_input = params.fetch('cents')
  return_value = user_input.to_i
  @cents = return_value.coin_combo()
  erb(:cents)
end
