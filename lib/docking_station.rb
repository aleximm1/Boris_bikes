require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    if @bikes.empty?
      raise "No bikes available"
    else
      working_bike = give_working_bike
      @bikes.delete(working_bike)
      working_bike
    end
  end

  def dock(bike)
    if full?
      raise "Docking station is full"
    else
      @bikes << bike
    end
  end

  def give_working_bike
    @bikes.select(&:working)[0]
  end

  private

  def full?
    @bikes.size >= @capacity
    #   true
    # else
    #   false
    # end
  end
end
