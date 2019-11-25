class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = ["Uggs", "Rainbow"]

  def initialize(brand)
    @brand = brand
    counter = 1
    BRANDS.each do |shoe|

      if shoe == brand
        #don't add it to BRANDS since it's already there
        puts "The shoe brand was #{brand}"
      else
        BRANDS << brand
        puts "Unique brand is : #{brand}"
      end
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
