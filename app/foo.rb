
class Foo
  attr_accessor :a

  def yo
    "yo adrian"
  end

end

f = Foo.new
f.a = "eddie would go"

puts "a: #{f.a}"
puts "yo: #{f.yo}"
