class Places

  @@stored_places = []

  define_method(:initialize) do |location|
    @location = location
  end

  define_method(:description) do
    @location
  end

  define_method(:store) do
    @@stored_places.push(self.description())
  end

  define_singleton_method(:all) do
    @@stored_places
  end

  define_singleton_method(:clearall) do
    @@stored_places = []
  end

end
