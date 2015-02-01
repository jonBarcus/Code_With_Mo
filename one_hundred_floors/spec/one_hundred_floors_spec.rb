require_relative("../lib/one_hundred_floors_two_eggs")

describe Building do
  subject(:build){Building.new(10, 5)}
  it("should have 10 floors") do
    expect(build.floors).to eq(10)
  end
  it("should have the terminal floor as 5") do
    expect(build.terminal_floor).to eq(5)
  end

  it("should have a starting level of 2") do
    expect(build.egg_test).to eq(2)
  end

end
