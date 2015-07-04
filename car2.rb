class Car
  def initialize(vin, catalog)
    @vin = vin
    @catalog = catalog
  end

  def muffler
    part :muffler
  end

  def engine
    part :engine
  end

  def transmission
    part :transmission
  end

  def part(name)
    price = @catalog.send "get_#{name}_price", @vin
    info = @catalog.send "get_#{name}_info", @vin
    return "#{name.capitalize}, #{info}, price: #{price}"
  end
end


    

