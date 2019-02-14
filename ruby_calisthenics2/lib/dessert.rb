class Dessert
  # add code for setters and getters
  def initialize(name, calories)
    @name = name
    @calories = calories
    # your code here
  end
  attr_accessor :name
  attr_accessor :calories
  def healthy?
    # your code here
    if (self.calories > 200)
      return false
    end
    return true
  end
  def delicious?
    # your code here
    return true
  end
end

class JellyBean < Dessert
  # add code for setters and getters
  def initialize(flavor)
    # your code here
    @flavor = flavor
    @calories = 5
    @name = flavor + " jelly bean"
  end
  attr_accessor :flavor
  def delicious?
    # your code here
    return (self.flavor != 'licorice')
  end
end
