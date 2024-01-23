module Circle
  # attr_accessors :radius :area
  def requirement(radius)
    @radius=radius
  end
  def circle_area
    @area=@radius*@radius*3.14
    p "The area of the circle with radius #{@radius} is #{@area}"
  end
end
