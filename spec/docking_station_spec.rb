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

  it {is_expected.to respond_to(:dock).with(1).argument}

  it 'contains a bike' do
    expect(subject).to respond_to (:bike)
  end

  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it 'raises error if more than one bike is taken before a bike is docked' do
    subject.release_bike
    expect{subject.release_bike}.to raise_error "No bikes available"
  end
end
