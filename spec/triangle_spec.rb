require('rspec')
require('pry')
require('triangle')

describe ('#triangle') do
  it('gives a message of This is a not triangle') do
    test = Triangle.new(2,2,8)
    expect(test.complete()).to(eq("This is a not triangle."))
  end
  it('gives a message of This is a not triangle') do
    test = Triangle.new(4,4,4)
    expect(test.complete()).to(eq("This is an equilateral triangle."))
  end
  it('gives a message of This is a not triangle') do
    test = Triangle.new(3,4,5)
    expect(test.complete()).to(eq("This is a Scalene triangle."))
  end
  it('gives a message of This is a not triangle') do
    test = Triangle.new(4,4,6)
    expect(test.complete()).to(eq("This is an isosceles triangle."))
  end
end
