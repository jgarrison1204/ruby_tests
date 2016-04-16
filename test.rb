require 'minitest/autorun'
require_relative 'app.rb'

class TestWeather < MiniTest::Test

  # Before the tests are run, creates a WeatherReport
  # object that will be available to all the testing methods
  def setup
    @weather_report = WeatherReport.new
  end

  # Should tell user "No weather data yet!"
  # when there is no data to report
  def test_default_report
    assert_equal "No weather data yet!", @weather_report.report
  end
end

def add_shit(num1, num2)
  num1 + num2
end

class TestAdd < MiniTest::Test
  def test_adding_shit
    assert_equal 10, add_shit(5,5)
  end
  def test_refute_equal
    refute_equal 1, add_shit(5,5)
  end
end
