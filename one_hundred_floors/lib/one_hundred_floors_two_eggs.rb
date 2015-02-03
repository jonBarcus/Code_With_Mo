require 'pry'

class Building

  def initialize(floors, terminal_floor)
    @floors = floors
    @terminal_floor = terminal_floor
    @highest_safe_floor = 0
    @counter = 1
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

  def move_test_down
    new_start = 1
    return new_start
  end

  def move_test_up(old_starting_level)
    if old_starting_level < starting_level
      new_start = (starting_level / 2 )
    else
      new_start = ((floors - old_starting_level) / 2 ) + old_starting_level
      if old_starting_level == new_start
        new_start = new_start + 1
      end
    end
    return new_start
  end

  def egg_break(floor_drop)
    if floor_drop == terminal_floor && @broken_egg == true
      @highest_safe_floor = floor_drop - 1
      return true
    elsif floor_drop > terminal_floor && terminal_floor == 0
      return true
    elsif floor_drop > terminal_floor
      @new_level = move_test_down
      @broken_egg = true
      return @new_level && false
    elsif floor_drop < terminal_floor && @broken_egg == false
      @new_level = move_test_up(floor_drop)
      return @new_level && false
    else
      @highest_safe_floor = floor_drop
      @new_level = floor_drop += 1
      return false
    end
  end

  def egg_test

    @broken_egg = false
    @new_level = starting_level

    while egg_break(@new_level) == false
      @counter += 1
    end

    return @highest_safe_floor

  end

  def counter_method
      return @counter
  end


end
