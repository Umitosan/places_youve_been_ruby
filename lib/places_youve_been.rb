class Places
  define_method(:initialize) do |location|
    @location = location
  end

  define_method(:description) do
    @location
  end

end
