require_relative 'bike'

class DockingStation
  attr_reader :bike_collection

  def initialize
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
      @bike_collection << docking_bike
      return docking_bike
    end
  end

  private
  def full?
    @bike_collection.count >=20
  end

  def empty?
    @bike_collection.empty?
  end

end
