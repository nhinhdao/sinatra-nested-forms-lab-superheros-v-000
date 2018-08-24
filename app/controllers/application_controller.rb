require 'sinatra/base'

class App < Sinatra::Base

   set :views, Proc.new { File.join(root, "../views/") }

   get '/' do
      erb :super_hero
   end

   post '/teams' do
      @team = Superhero.new(params[:team])

      params[:hero].each { |hero|  Superhero.new(hero)}
      @hero = Superhero.all
      erb :team
   end
end
