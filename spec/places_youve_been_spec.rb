require "places_youve_been"
require "rspec"
require "pry"




describe 'Places#description' do

  it "returns the location name of the place" do
    place1 = Places.new("Paris")
    expect(place1.description()).to(eq("Paris"))
  end

end
