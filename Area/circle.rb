module Circle
  def self.requirement(radius)
    @radius=radius
  end
  
  def self.circle_area
    @area=@radius*@radius*3.14
    p "The area of the circle with radius #{@radius} is #{@area}"
  end
end

