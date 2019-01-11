require_relative 'docking_station'

class Bike

  def working?
    return true
  end

  def report
    @broken = true
  end

  def broken?
    @broken
  end

end
