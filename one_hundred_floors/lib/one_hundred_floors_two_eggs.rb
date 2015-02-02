require 'pry'

class Building

  def initialize(floors, terminal_floor)
    @floors = floors
    @terminal_floor = terminal_floor
    @highest_safe_floor = 0
    @test = false
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

  def egg_break(floor_drop)
    if floor_drop == terminal_floor
      @highest_safe_floor = floor_drop - 1
      return true
    elsif floor_drop > terminal_floor
      @new_level = move_test_down
      return @new_level && false
    else
      @highest_safe_floor = floor_drop
      @new_level = floor_drop += 1
      return false
    end
  end



  # def egg_break(floor_drop)
  #   if floor_drop >= terminal_floor
  #     return true
  #   else
  #     return floor_drop && false
  #   end
  # end


  def egg_test

    @new_level = starting_level

    while egg_break(@new_level) == false
    end

    return @highest_safe_floor

  end


end
