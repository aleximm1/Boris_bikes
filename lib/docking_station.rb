require_relative 'bike'

class DockingStation
  attr_reader :bike, :bike_counter

  def initialize
    @bike_counter = true
  end

  def release_bike
    if bike_counter == true
      @bike = Bike.new
      @bike_counter = false
      return @bike
    else
      raise "No bikes available"
    end
  end

  def dock(bike)
    @bike = bike
    @bike_counter = true
    return @bike
  end

end
