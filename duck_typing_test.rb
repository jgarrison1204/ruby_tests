class TaxiRide
  def initialize(miles: 0)
    @miles = miles
  end

  def total
   2.75 * @miles
  end
end

class AirportShuttle
  def flat_rate_fare
    "40.00"
  end
end

class RuberRide
  def initialize(miles: 0)
    @miles = miles
  end

  def total_fare
    base_fare + mileage_fare
  end

  def base_fare
    2.0
  end

  def mileage_fare
    1.15 * @miles
  end
end

class Transaction
  def initialize(purchase)
    @purchase = purchase
    puts "Processing Transaction..."
  end

  def print_receipt
    if @purchase.is_a? AirportShuttle
      puts "You bought a #{@purchase.class} for $#{@purchase.flat_rate_fare}"
    elsif @purchase.is_a? TaxiRide
      puts "You bought a #{@purchase.class} for $#{@purchase.total}"
    else
      puts "You bought a #{@purchase.class} for $#{@purchase.total_fare}"
    end
  end
end

purchases = [RuberRide.new(miles: 5), AirportShuttle.new(), TaxiRide.new(miles: 17)]

purchases.each do |purchase|
  Transaction.new(purchase).print_receipt
end
