module ApplicationHelper
  def captcha_number
    return rand(1..9)
  end

  def captcha_symbol
    return ["+", "-"].sample
  end
end
