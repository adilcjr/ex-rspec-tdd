class Calculator

  def sum(a, b)
    a + b
  end

  def div(a, b)
    return "Error" if b == 0
    a / b
  end
end