require 'bike'

describe Bike do

  it { is_expected.to respond_to :report_broken_bike }

  it 'checks if the bikes status has been changed from working to not working when report_broken_bike is called' do
    bike = Bike.new
    bike.report_broken_bike
    expect(bike.working).to eq false
  end
end
