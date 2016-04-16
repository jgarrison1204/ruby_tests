class RuberRide
  def initialize(miles: 0)
    @miles = miles
    @rate = 1.15
    @base_fare = 2.0
  end

  def total_fare
    @base_fare + mileage_fare
  end

  def mileage_fare
    @miles * @rate
  end
end

class RuberXL < RuberRide
  def initialize(miles: 0)
    @miles = miles
    @rate = 2.0
    @base_fare = 3.0
  end
end

class RuberSelect < RuberRide
  def initialize(miles: 0)
    @miles = miles
    @rate = 2.75
    @base_fare = 5.00
  end

  def total_fare
    super > 20 ? super : 20.00
  end
end

puts RuberSelect.new(miles: 3).total_fare
puts RuberXL.new(miles: 5).total_fare
