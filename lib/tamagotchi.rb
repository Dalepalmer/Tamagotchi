class Tamagotchi < ActiveRecord::Base
  validates(:name, :presence => true)
  before_save(:titleize_name, :lower_health)

  scope :alive, ->(health) { where("health <= 0 ", health)}

  def heal
    self.health = self.health + 5
    self.save
  end

  def snack
    self.food = self.food + 2
    self.save
  end

  def meal
    self.food = self.food + 4
    self.save
  end

  def play_fetch
    self.activity = self.activity + 4
    self.sleep = self.sleep - 4
    self.food = self.food - 4
    self.save
  end

  def rest
    self.sleep = self.sleep + 3
    self.food = self.food - 2
    self.activity = self.activity - 2
    self.save
  end

  def tag
    self.activity = self.activity + 2
    self.sleep = self.sleep - 2
    self.food = self.food - 2
    self.save
  end

  private

  define_method(:food_level) do
    @food_level = @@stats.at(0)
  end

  define_method(:sleep_level) do
    @sleep_level = @@stats.at(1)
  end

  define_method(:activity_level) do
    @activity_level = @@stats.at(2)
  end

  define_singleton_method(:time_passes) do
    @@stats[0] = @@stats.at(0).-(1)
    @@stats[2] = @@stats.at(2).to_f().-(0.5)
    @@stats[1] = @@stats.at(1).-(1)
    @@stats[3] = @@stats.at(3).+(1)

  end

  # define_method(:dies) do
  #   @@stats[0] = @@stats.at(0).-(10)
  # end

  define_method(:feed) do
    @@stats[0] = @@stats.at(0).+(3)
    Tamagotchi.time_passes()
  end

  define_singleton_method(:clear) do
    @@stats = [10, 10, 10, 0]
  end

  define_method(:play) do
    @@stats[2] = @@stats.at(2).+(1)
    Tamagotchi.time_passes()
  end


  # define_method(:is_alive?) do
  #   if @@stats.at(0).>(0)
  #     true
  #   else
  #     false
  #   end
  # end

  define_method(:titleize_name) do
    self.name=(name().titleize())
  end

  define_method(:lower_health) do
    if self.food == 0
      self.health = self.health - 2
    end
  end
end
