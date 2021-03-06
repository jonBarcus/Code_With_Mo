require_relative("../lib/one_hundred_floors_two_eggs")

describe Building do
  context "20 story building with 17th terminal" do
    subject(:build){Building.new(20, 17)}
    it("should have 20 floors") do
      expect(build.floors).to eq(20)
    end
    it("should have the terminal floor as 17") do
      expect(build.terminal_floor).to eq(17)
    end

    it("should have a starting level of 10") do
      expect(build.starting_level).to eq(10)
    end

    it("should have a safe dropping level of 16") do
      expect(build.egg_test).to eq(16)
    end

    it("should have a counter value of 3") do
      expect(build.egg_test).to eq(16)
      expect(build.counter_method).to eq(3)
    end
  end

  context "50 story building with 15th terminal" do
    subject(:build){Building.new(50, 15)}
    it("should have 50 floors") do
      expect(build.floors).to eq(50)
    end
    it("should have the terminal floor of 15") do
      expect(build.terminal_floor).to eq(15)
    end
    it("should have a starting level of 25") do
      expect(build.starting_level).to eq(25)
    end
    it("should have a safe dropping level of 14") do
      expect(build.egg_test).to eq(14)
    end
     it("should have a counter value of 16") do
      expect(build.egg_test).to eq(14)
      expect(build.counter_method).to eq(16)
    end
  end

  context "100 story building with 98th terminal" do
    subject(:build){Building.new(100, 98)}
    it("should have 100 floors") do
      expect(build.floors).to eq(100)
    end
    it("should have the terminal floor of 98") do
      expect(build.terminal_floor).to eq(98)
    end
    it("should have a starting level of 50") do
      expect(build.starting_level).to eq(50)
    end
    it("should have a safe dropping level of 97") do
      expect(build.egg_test).to eq(97)
    end
     it("should have a counter value of 6") do
      expect(build.egg_test).to eq(97)
      expect(build.counter_method).to eq(6)
    end
  end

  context "250 story building with 250th terminal" do
    subject(:build){Building.new(250, 250)}
    it("should have 250 floors") do
      expect(build.floors).to eq(250)
    end
    it("should have the terminal floor of 250") do
      expect(build.terminal_floor).to eq(250)
    end
    it("should have a starting level of 125") do
      expect(build.starting_level).to eq(125)
    end
    it("should have a safe dropping level of 249") do
      expect(build.egg_test).to eq(249)
    end
  end

  context "100 story building with 0th terminal" do
    subject(:build){Building.new(100, 0)}
    it("should have 100 floors") do
      expect(build.floors).to eq(100)
    end
    it("should have the terminal floor of 0") do
      expect(build.terminal_floor).to eq(0)
    end
    it("should have a starting level of 50") do
      expect(build.starting_level).to eq(50)
    end
    it("should have a safe dropping level of 0") do
      expect(build.egg_test).to eq(0)
    end
  end

end
