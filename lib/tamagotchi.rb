class Tamagotchi
  @@stats = [10, 10, 10]

  define_method(:initialize) do |name|
    @name = name
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food_level = @@stats.at(0)
  end

  define_method(:sleep_level) do
    @sleep_level = @@stats.at(1)
  end

  define_method(:activity_level) do
    @activity_level = @@stats.at(2)
  end

  define_method(:time_passes) do
    @@stats[0] = @@stats.at(0).-(1)
  end
end
