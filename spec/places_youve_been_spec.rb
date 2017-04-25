require "places_youve_been"
require "rspec"
require "pry"

describe 'Places#description' do

  before() do
    Places.clearall
  end

  describe '#description' do
    it "returns the location name of the place" do
      place1 = Places.new("Paris")
      expect(place1.description()).to(eq("Paris"))
    end
  end

  describe '#store' do
    it "save the place instance to an array" do
      place1 = Places.new("Paris")
      place1.store
      expect(Places.all).to(eq(['Paris']))
    end
  end

  describe '#store' do
    it "save the place instance to an array" do
      place1 = Places.new("Paris")
      place2 = Places.new("Amsterdam")
      place1.store
      place2.store
      expect(Places.all).to(eq(['Paris', 'Amsterdam']))
    end
  end

end
