require 'docking_station.rb'

describe DockingStation do
    it { is_expected.to respond_to(:release_bike) }
end
#parentheses are not necessary, put space between respond_to
#and release bike.
