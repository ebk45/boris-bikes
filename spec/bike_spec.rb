require 'docking_station'
require 'bike'

describe Bike do
  it 'responds to .working?' do
    expect(subject).to respond_to :working?
  end

  it 'should allow the user to report if a bike is broken' do
    subject.report
    expect(subject).to be_broken
  end
end
