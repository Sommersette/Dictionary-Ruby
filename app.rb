require('sinatra')
require('sinatra/reloader')
require('./lib/dictionary')
also_reload('lib/**/*.rb')
also_reload('views/**/*.erb')

require('rspec')
require('launchy')
require('pry')

get('/') do
  erb(:index)
end
