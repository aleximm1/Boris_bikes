require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
    # expect(subject).to respond_to :release_bike
  # end
  it 'gets a bike' do
    subject.dock(Bike.new)
    expect(subject.release_bike).to be_a Bike
  end

  it 'checks if bike is working' do
    subject.dock(Bike.new)
    expect(subject.release_bike.working?).to be true
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  it 'contains a bike' do
    expect(subject).to respond_to (:bikes)
  end

  it 'raises error if a bike is taken when there are no bikes' do
    expect{subject.release_bike}.to raise_error "No bikes available"
  end

  it 'tests error message if docked while docking station is full' do
    DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
    expect{subject.dock(Bike.new)}.to raise_error "Docking station is full"
  end

  it 'tests if changing the capacity when you create a new docking station changes how many bikes you can dock' do
    station = DockingStation.new(10)
    10.times {station.dock(Bike.new)}
    expect{station.dock(Bike.new)}.to raise_error "Docking station is full"
  end
end
