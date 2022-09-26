class Confection
  def prepare
    puts "Baking at 350 degrees for 25 minutes"
  end
end

class Cupcake < Confection
  def frost
    puts "Apply frosting"
  end
end

class BananaCake < Confection
end

cupcake = Cupcake.new
cupcake.prepare
cupcake.frost

banana_cake = BananaCake.new
banana_cake.prepare
