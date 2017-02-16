require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise "No bikes available"
    else
      bike = @bikes[0]
      @bikes = @bikes.drop(1)
      bike
    end
  end

  def dock(bike)
    if full? == true
      raise "Docking station is full"
    else
      @bikes << bike
    end
  end

  private

  def full?
    if @bikes.size >= 20
      return true
    else
      false
    end
  end
end
