require './circle.rb'
require './triangle.rb'
require './rectangle.rb'

class Area
include Circle,Rectangle,Triangle
  def user
    puts "Choose one option \n 1.area of cicle \n 2.area of rectangle \n 3.area of triangle"
    n=gets.to_i
    case n
    when 1
      p 'Enter the radius of the circle'
      radius=gets.to_i
      Circle.requirement(radius)
      Circle.circle_area
    when 2
      p 'Enter the length'
      length=gets.to_i
      p 'Enter the bredth'
      bredth=gets.to_i

      Rectangle.requirement(length,bredth)
      Rectangle.rectangle_area
    when 3
      p 'Enter the base'
      base=gets.to_i
      p 'Enter the height'
      height=gets.to_i

      Triangle.requirement(base,height)
      Triangle.triangle_area
    end
  end
end 

area=Area.new
area.user

