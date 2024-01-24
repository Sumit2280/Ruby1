module Triangle
  def self.requirement(base,height)
    @base=base
    @height=height
  end
  
  def self.triangle_area
    @area=0.5*@base*@height
    p "The area of the circle with base #{@base} and height #{@height} is #{@area.to_i}"
  end
end

