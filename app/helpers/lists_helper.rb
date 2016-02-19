module ListsHelper
  def white_to_red(modifier)
    r = 255
    g = 255 - 5*modifier
    b = 255 - 5*modifier
    "rgb(#{r},#{g},#{b})"
  end
end