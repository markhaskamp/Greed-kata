class Array
  def has_at_least_one? n
    return (self.find_index(n) != nil)
  end

  def has_at_least_three? n
    return self.find_all {|i| i == n}.count >= 3
  end
end

class Greed_RulesEngine
  def self.roll a
    return_total = 0

    while a.length > 0
      ruler = RulesEngine.get_rule(a)
      # puts "ruler: #{ruler.to_s}"

      return_total += ruler.get_score
      a = ruler.reset_dice a
    end

    return return_total
  end
end

class RulesEngine
  def self.get_rule input_dice_array

    (1..6).each do |die|
      return Rule_TripleDie.new(die) if input_dice_array.has_at_least_three?(die)
    end

    return Rule_SingleOne.new if input_dice_array.has_at_least_one?(1)
    return Rule_SingleFive.new if input_dice_array.has_at_least_one?(5)
    return No_Rule.new
  end
end

class Rule_TripleDie
  def initialize die
    @my_die = die
  end

  def get_score
    return 1000 if @my_die == 1
    return 500 if @my_die == 5
    return (@my_die * 100)
  end


  def reset_dice a
    3.times do
      a.delete_at(a.find_index(@my_die))
    end
    return a
  end
end

class Rule_SingleOne 
  def get_score
    100
  end

  def reset_dice a
    a.delete_at(a.find_index(1))
    return a
  end
end

class Rule_SingleFive 
  def get_score
    50
  end

  def reset_dice a
    a.delete_at(a.find_index(5))
    return a
  end
end

class No_Rule
  def get_score
    0
  end

  def reset_dice a
    return []
  end
end

