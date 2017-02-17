require_relative 'bike'

class DockingStation
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

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
    if full?
      raise "Docking station is full"
    else
      @bikes << bike
    end
  end

  private

  def full?
    @bikes.size >= DEFAULT_CAPACITY
    #   true
    # else
    #   false
    # end
  end
end
