require('sinatra')
require('sinatra/reloader')
require('descriptive_statistics')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  word = params.fetch(('word').to_s)
  @word = params.fetch(('word').to_s)
  @sentence = params.fetch(('sentence').to_s)
  @result = params.fetch('sentence').to_s.count(word)
  erb(:index)
end
