require('sinatra')
require('sinatra/reloader')
require('./lib/dictionary')
also_reload('lib/**/*.rb')
also_reload('views/**/*.erb')

require('rspec')
require('launchy')
require('pry')

get('/') do
  @Word = Word.all
  erb(:index)
end

post('/word/new') do
  word = params.fetch('word')
  attributes = {:word => word}
  Word.new(attributes).save()
  @Word = Word.all()
  erb(:index)
end

get('/word/new') do
  erb(:word_form)
end

get('/:id/definition/new') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:deinition)
end

post('/definitions') do
  definition = params.fetch('definition')
  attributes = {:definition => definition}
  new_definition = Definition.new(attributes)
  new_definition.save()
  @word = Word.find(params.fetch('word_id').to_i())
  @word.add_definition(new_definition)
  erb(:success)
end
