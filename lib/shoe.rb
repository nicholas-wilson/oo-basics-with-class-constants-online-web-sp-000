class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if (new_brand?(BRANDS, brand))
      BRANDS << brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def new_brand?(brands, new_brand)
    brands.each do |brand|
      if brand == new_brand
        return false
      end
    end
    return true
  end

end
