class Catalog
  def initialize(print_date)
    @print_date = print_date
  end

  def get_muffler_price(vin)
    #would return a price based on the vin
    #for simplicity, returns a fixed value
    100
  end

  def get_muffler_info(vin)
    "A big ugly muffler"
  end

  def get_engine_price(vin)
    900
  end

  def get_engine_info(vin)
    "V6 but runs like a V8"
  end

  def get_transmission_price(vin)
    850
  end

  def get_transmission_info(vin)
    "HEMI"
  end
end
