class Car
  def initialize(vin, catalog)
    @vin = vin
    @catalog = catalog
  end

  def muffler
    price = @catalog.get_muffler_price(@vin)
    info = @catalog.get_muffler_info(@vin)
    return "Muffler, #{info}, price: #{price}"
  end

  def engine
    price = @catalog.get_engine_price(@vin)
    info = @catalog.get_engine_info(@vin)
    return "Engine, #{info}, price: #{price}"
  end

  def transmission
    price = @catalog.get_transmission_price(@vin)
    info = @catalog.get_transmission_info(@vin)
    return "Transmission, #{info}, price: #{price}"
  end
end


    

