class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = ["Uggs", "Rainbow"]

  def initialize(brand)
    @brand = brand
    BRANDS.each do |shoe|
      if shoe == brand
        #don't add it to BRANDS since it's already there
        puts "does this even shoe???"
      else
        BRANDS << brand
        puts BRANDS.length
      end
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
