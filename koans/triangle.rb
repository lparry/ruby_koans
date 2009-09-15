# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  sides = [a,b,c].sort
  
  sides.reject! { |item| item <= 0 }
  raise TriangleError if sides.size < 3 #if we lost any sides because they were >= 0
  
  raise TriangleError if sides[2] >= sides[0] + sides[1] # if the biggest side is >= than the sum of the smaller sides
  
  return :equilateral if sides.uniq.size == 1
  return :isosceles if sides.uniq.size == 2
  return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
