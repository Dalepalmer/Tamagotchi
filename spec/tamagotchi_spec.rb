require('spec_helper')


describe("Tamagotchi") do


  describe('#rest') do
    it("increases sleep") do
      my_pet = Tamagotchi.create({:name => "lil dragon", :sleep => 0})
      my_pet.rest
      expect(my_pet.sleep()).to(eq(1))
    end
  end
end

#   describe("#initialize") do
#     it("sets the name and a few other properties") do
#       my_pet = Tamagotchi.new("lil dragon")
#       expect(my_pet.name()).to(eq("lil dragon"))
#       expect(my_pet.food_level()).to(eq(10))
#       expect(my_pet.sleep_level()).to(eq(10))
#       expect(my_pet.activity_level()).to(eq(10))
#     end
#   end
#
#   describe(".time_passes") do
#     it("decreases the amount of food and activity the Tamagotchi has left by 1") do
#       my_pet = Tamagotchi.new("lil dragon")
#       Tamagotchi.time_passes()
#       expect(my_pet.food_level()).to(eq(9))
#       expect(my_pet.activity_level()).to(eq(9.5))
#     end
#   end
#
#   describe("#is_alive?") do
#     it("is alive if the food level is above 0") do
#       my_pet = Tamagotchi.new("lil dragon")
#       expect(my_pet.is_alive?()).to(eq(true))
#     end
#
#     it("is dead if the food level is 0") do
#       my_pet = Tamagotchi.new("lil dragon")
#       my_pet.dies()
#       expect(my_pet.is_alive?()).to(eq(false))
#     end
#   end
#
#   describe("#dies") do
#     it("kills the tamagotchi") do
#       my_pet = Tamagotchi.new("lil dragon")
#       my_pet.dies()
#       expect(my_pet.is_alive?()).to(eq(false))
#     end
#   end
#
#   describe("#feed") do
#     it("adds 2 to the current food level") do
#       my_pet = Tamagotchi.new("lil dragon")
#       Tamagotchi.time_passes()
#       Tamagotchi.time_passes()
#       expect(my_pet.food_level()).to(eq(8))
#       my_pet.feed()
#       expect(my_pet.food_level()).to(eq(10))
#     end
#   end
#
#   describe("#play") do
#     it("adds 1 to the current activity level") do
#       my_pet = Tamagotchi.new("lil dragon")
#       my_pet.play()
#       expect(my_pet.activity_level()).to(eq(10.5))
#     end
#   end
#
#   describe("#rest") do
#     it("adds number to sleep and time passing equal to units entered") do
#       my_pet = Tamagotchi.new("lil dragon")
#       my_pet.rest(4)
#       expect(my_pet.sleep_level()).to(eq(14))
#     end
#   end
#   describe("#display") do
#     it('Displays the stats of the tama correct for each function') do
#       my_pet = Tamagotchi.new("lil dragon")
#       expect(my_pet.display()).to(eq([10, 10, 10, 0]))
#       my_pet.feed()
#       expect(my_pet.display()).to(eq([12, 9, 9.5, 1]))
#       my_pet.rest(1)
#       expect(my_pet.display()).to(eq([11, 10, 9, 2]))
#       my_pet.play()
#       expect(my_pet.display()).to(eq([10, 9, 9.5, 3]))
#     end
#   end
# end
