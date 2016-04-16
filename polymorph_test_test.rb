class RuberRide
  def initialize(miles: 0)
    @miles = miles
    @rate = 1.15
    @base_fare = 2.0
  end
  def total_fare
    base_fare + mileage_fare
  end
  def mileage_fare
    @rate * @miles
  end
  def base_fare
    @base_fare
  end
end

class RuberXL < RuberRide
  def initialize(miles: 0, multiplier: 1.0)
    @miles = miles
    @rate = 2.0
    @base_fare = 3.0
    @multiplier = multiplier
  end
  def total_fare
    super * @multiplier
  end
end

class RuberSelect < RuberRide
  def initialize(miles: 0)
    @miles = miles
    @rate = 2.75
    @base_fare = 5.0
  end
  def total_fare
    super > 20 ? super : 20.00
  end
end

#puts RuberSelect.new(miles: 10).total_fare
#puts RuberSelect.new(miles: 5).total_fare
#puts RuberXL.new(miles: 20).mileage_fare
#puts RuberXL.new(miles: 50, multiplier: 2.0).total_fare
#puts RuberXL.new(miles: 50).total_fare
#puts RuberXL.new(miles: 50, multiplier: 2.0).total_fare
