class RuberRide
  def initialize(miles: 0)
    @miles = miles
  end

  def total_fare
    base_fare + mileage_fare
  end

  def mileage_fare
    1.15 * @miles
  end

  def base_fare
    2.0
  end
end

class RuberXL < RuberRide
  def base_fare
    3.0
  end
  def mileage_fare
    2.0 * @miles
  end
end

class RuberSelect < RuberRide
  def total_fare
    super > 20.00 ? super : 20.00
  end
  def base_fare
    5.0
  end
  def mileage_fare
    2.75 * @miles
  end
end

class 


trip1 = RuberRide.new(miles: 13)
puts trip1.total_fare
trip2 = RuberXL.new(miles: 13)
puts trip2.total_fare
trip3 = RuberSelect.new(miles: 13)
puts trip3.total_fare
puts RuberRide.new(miles: 5).mileage_fare
puts RuberSelect.new(miles: 5).mileage_fare
