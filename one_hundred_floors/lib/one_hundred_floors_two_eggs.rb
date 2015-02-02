class Building

  def initialize(floors, terminal_floor)
    @floors = floors
    @terminal_floor = terminal_floor
  end

  def floors
    return @floors
  end

  def terminal_floor
    return @terminal_floor
  end

  def starting_level

    starting_level = @floors / 2

    return starting_level

  end

  def egg_test

  end


end
