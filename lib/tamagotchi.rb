class Tamagotchi
  @@stats = [10, 10, 10, 0]

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

  define_singleton_method(:time_passes) do
    @@stats[0] = @@stats.at(0).-(1)
    @@stats[2] = @@stats.at(2).to_f().-(0.5)
    @@stats[1] = @@stats.at(1).-(1)
    @@stats[3] = @@stats.at(3).+(1)

  end

  define_method(:dies) do
    @@stats[0] = @@stats.at(0).-(10)
  end

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

  define_method(:display) do
    @@stats
  end

  define_method(:rest) do |time_units_of_sleep|
    time_units_of_sleep.times() do
      @@stats[1] = @@stats.at(1).+(2)
      Tamagotchi.time_passes()
    end
  end

  define_method(:is_alive?) do
    if @@stats.at(0).>(0)
      true
    else
      false
    end
  end
end
