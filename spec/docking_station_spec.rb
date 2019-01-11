require 'docking_station'

describe DockingStation do
  it 'should respond to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  describe '#release_bike' do
    it 'should release a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'should raise an error if there is no bike' do
      expect{subject.release_bike}.to raise_error("There are no bikes, sorry love.")
    end
  end

  describe '#dock' do
    it 'should .dock the bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike_collection[-1]).to eq bike
    end

    it 'should raise an error when docking if there is already too much bike' do
      20.times { subject.dock(Bike.new) }
      expect{subject.dock(Bike.new)}.to raise_error("Sorry, I am already full of bikes.")
    end
  end

  describe '#working' do
    it 'should check if bike is .working?' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to be_working
    end
  end
end
