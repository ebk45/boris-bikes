require_relative 'bike'

class DockingStation
  attr_reader :bike_collection

  def initialize
    @bike_collection = []
  end

  def release_bike
    if bike_collection == []
      fail "There are no bikes, you failure."
    else
      bike_collection.pop
    end
  end

  def dock(docking_bike)
    if bike_collection.count >= 20
      fail "Sorry, I am already too much of bike."
    else
      @bike_collection.push(docking_bike)
      return docking_bike
    end
  end
end
