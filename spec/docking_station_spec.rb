require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
    # expect(subject).to respond_to :release_bike
  # end
  it 'get a bike' do
    expect(subject.release_bike).to be_a Bike
  end

  it 'checks if bike is working' do
    expect(subject.release_bike.working?).to be true
  end
end
