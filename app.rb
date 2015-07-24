require 'bundler'
Bundler.require()



def fake_movie (name, release_year, description)
  {:name => name.to_s, :release_year => release_year.to_s, :description => description.to_s}.to_json
end


get '/api/Spiderman' do
  cross_origin
  fake_movie('Spiderman', '1980', 'spider bites a boy and he turns into a superhero')
end

get '/api/Annie' do
  cross_origin
  fake_movie('Annie', '1978', 'orphan Annie is adopted by a billionaire')
end

get '/api/Jaws' do
  cross_origin
  fake_movie('Jaws', '1981', 'a shark attacks a boat')
end
