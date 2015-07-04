class Car
  def initialize(vin, catalog)
    @vin = vin
    @catalog = catalog
    catalog.methods.grep(/^get_(.*)_info$/) { Car.define_part $1 }
  end

  def self.define_part(name)
    define_method(name) do
      price = @catalog.send "get_#{name}_price", @vin
      info = @catalog.send "get_#{name}_info", @vin
      return "#{name.capitalize}, #{info}, price: #{price}"
    end
  end
end


    

