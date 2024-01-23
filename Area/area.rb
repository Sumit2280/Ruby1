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
      requirement(radius)
      circle_area
    when 2
      length=gets.to_i
      bredth=gets.to_i

      requirement(length,bredth)
      rectangle_area
    when 3
    end
  end
end 

area=Area.new
area.user