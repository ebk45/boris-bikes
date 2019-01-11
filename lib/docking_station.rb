require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :capacity, :bike_collection

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bike_collection = []
  end

  def release_bike
    if empty?
      fail "There are no bikes, sorry love."
    else
      bike_collection.pop
    end
  end

  def dock(docking_bike)
    if full?
      fail "Sorry, I am already full of bikes."
    else
      bike_collection << docking_bike
      return docking_bike
    end
  end

  def full?
    @bike_collection.count >=@capacity
  end

  def empty?
    @bike_collection.empty?
  end

end
