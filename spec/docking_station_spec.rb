require './lib/docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike}

  it 'releases working bikes' do
  bike = Bike.new
  expect(bike).to be_working
end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

it "doesn't have any bikes" do
 subject.bikes == []
 expect {subject.release_bike}.to raise_error("Sorry mate, no bikes left")
  end

it "does not have room for more bikes" do
  @newdock = DockingStation.new
  20.times { @newdock.dock(Bike.new) }
 expect {@newdock.dock(Bike.new)}.to raise_error("No slots available")
  end
end
