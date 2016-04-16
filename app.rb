class WeatherReport
  attr_writer :fahrenheit, :rain, :snow, :celsius

  def initialize
    @report = []
  end

  def report
    @report << "Today's temperature is #{@celsius}C!" if @celsius
    @report << "Today's temperature is #{@fahrenheit}F!" if @fahrenheit && !@celsius
    @report << "No weather data yet!" if @report.length == 0
    return @report
  end

  def c_to_f
    @celsius * 1.8 + 32
  end
end

class TestWeatherReport < MiniTest::Test
end
