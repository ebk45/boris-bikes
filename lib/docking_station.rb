require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    if bike == nil
      fail "There are no bikes, you failure."
    else
      bike
    end
  end

  def dock(docking_bike)
    if bike
      fail "Sorry, I am already too much of bike."
    else
      @bike = docking_bike
    end
  end
end
