class Triangle
  def initialize(sideOne, sideTwo, sideThree)
    @sideOne = sideOne
    @sideTwo = sideTwo
    @sideThree = sideThree
    @message = ""
  end

  def complete()
    binding.pry
    if ((@sideOne + @sideTwo <= @sideThree) | (@sideTwo + @sideThree <= @sideOne) | (@sideThree + @sideOne <= @sideTwo))
      @message = "This is a not triangle."
    elsif ((@sideOne == @sideTwo) & (@sideOne == @sideThree))
      @message = "This is an equilateral triangle."
    elsif ((@sideOne == @sideTwo) | (@sideOne == @sideThree) | (@sideTwo == @sideThree))
      @message = "This is an isosceles triangle."
    elsif ((@sideOne != @sideTwo) & (@sideOne != @sideThree) & (@sideTwo != @sideThree))
      @message = "This is a Scalene triangle."
    else
      @message = "I dunno what you did!"
    end
    @message
  end
end
