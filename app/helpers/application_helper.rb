module ApplicationHelper
  def captcha_number_max
    return rand(5..9)
  end

  def captcha_number_min
    return rand(1..4)
  end

  def captcha_symbol
    return ["+", "-"].sample
  end
end
