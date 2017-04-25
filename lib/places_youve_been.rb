class Places

  @@stored_places = []

  define_method(:initialize) do |loc|
    @location = loc
  end

  define_method(:description) do
    @location
  end

  define_method(:store) do
    @@stored_places.push(self)
  end

  define_singleton_method(:all) do
    @@stored_places
  end

  define_singleton_method(:print_all) do
    tmp_arr = []
    @@stored_places.each do |place|
      tmp_arr.push(place.description)
    end
    tmp_arr.join(" ")
  end

  define_singleton_method(:clearall) do
    @@stored_places = []
  end

  define_singleton_method(:all_len) do
    @@stored_places.length
  end

end
