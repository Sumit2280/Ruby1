module Triangle
  # attr_accessors :radius :area
  def requirement(base,height)
    @base=base
    @height=height
  end
  def triangle_area
    @area=0.5*@base*@height
    p "The area of the circle with base #{@base} and height #{@height} is #{@area}"
  end
end
