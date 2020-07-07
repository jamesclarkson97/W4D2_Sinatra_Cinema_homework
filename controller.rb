require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/film')
also_reload('.models/*')

get '/films' do
    @films = Film.all()
    erb(:index)
end

get '/films/Beetlejuice' do
    @film = Film.find(3)
    erb(:specific_film)
end

get '/films/Ghost' do
    @film = Film.find(1)
    erb(:specific_film)
end

get '/films/The' do
    @film = Film.find(2)
    erb(:specific_film)
end

get '/films/Casper' do
    @film = Film.find(4)
    erb(:specific_film)
end

# def self.find(id)
#     sql = "SELECT * FROM films
#     WHERE id = $1"
#     values = [id]
#     film_data = SqlRunner.run(sql, values)
#     return Film.map_item(film_data)
#   end


