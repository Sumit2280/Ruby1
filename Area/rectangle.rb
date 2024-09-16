module Rectangle
  def self.requirement(length,bredth)
    @length=length
    @bredth=bredth
  end

  def self.rectangle_area
    @area=@length*@bredth
    p "The area of the circle with length #{@length} and bredth #{@bredth} is #{@area}"
  end
end

