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
  @tamagotchi = Tamagotchi.create({:name => name, :food => 10, :sleep => 10, :activity => 10, :attack => 2, :defense => 1, :health => 10, :alive => true})
  redirect("/")
end

get('/tamagotchi/:id') do
  tama_id = params.fetch("id").to_i()
  @tamagotchi = Tamagotchi.find(tama_id)
  erb(:tamagotchi)
end

post('/sleep/:id') do
  tama_id = params.fetch("id").to_i()
  @tamagotchi = Tamagotchi.find(tama_id)
  @tamagotchi.rest
  redirect("/tamagotchi/".concat(tama_id.to_s()))
end

post('/heal/:id') do
  tama_id = params.fetch("id").to_i()
  @tamagotchi = Tamagotchi.find(tama_id)
  @tamagotchi.heal
  redirect("/tamagotchi/".concat(tama_id.to_s()))
end

post('/snack/:id') do
  tama_id = params.fetch("id").to_i()
  @tamagotchi = Tamagotchi.find(tama_id)
  @tamagotchi.snack
  redirect("/tamagotchi/".concat(tama_id.to_s()))
end

post('/meal/:id') do
  tama_id = params.fetch("id").to_i()
  @tamagotchi = Tamagotchi.find(tama_id)
  @tamagotchi.meal
  redirect("/tamagotchi/".concat(tama_id.to_s()))
end


post('/tag/:id') do
  tama_id = params.fetch("id").to_i()
  @tamagotchi = Tamagotchi.find(tama_id)
  @tamagotchi.tag
  redirect("/tamagotchi/".concat(tama_id.to_s()))
end

post('/play_fetch/:id') do
  tama_id = params.fetch("id").to_i()
  @tamagotchi = Tamagotchi.find(tama_id)
  @tamagotchi.play_fetch
  redirect("/tamagotchi/".concat(tama_id.to_s()))
end
