class Car
  def initialize(vin, catalog)
    @vin = vin
    @catalog = catalog
  end

  def self.define_part(name)
    define_method(name) do
      price = @catalog.send "get_#{name}_price", @vin
      info = @catalog.send "get_#{name}_info", @vin
      return "#{name.capitalize}, #{info}, price: #{price}"
    end
  end

  define_part :muffler
  define_part :engine
  define_part :transmission
end


    

