require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @tamagotchies = Tamagotchi.all()
  erb(:index)
end

post('/tamagotchi') do
  @tamagotchies = Tamagotchi.all()
  name = params.fetch("tamagotchi_name")
  @tamagotchi = Tamagotchi.create({:name => name, :alive => true})
  erb(:index)
end

get('tamagotchi/:id') do
  tama_id = params.fetch("id").to_i()
  erb(:tamagotchi)
end
