class Greed
  def self.roll a
    
    roll_hash = set_up_roll_hash a

    return_total = 0

    return_total = check_for_ones roll_hash
    return_total += check_for_triples roll_hash
    return_total += check_for_single_fives roll_hash

    return return_total
  end

  def self.set_up_roll_hash input_roll
    roll_hash = Hash.new
    roll_hash[0] = 0
    roll_hash[1] = 0
    roll_hash[2] = 0
    roll_hash[3] = 0
    roll_hash[4] = 0
    roll_hash[5] = 0
    roll_hash[6] = 0

    input_roll.each do |die|
        roll_hash[die] += 1
    end

    return roll_hash
  end

  def self.check_for_ones roll_hash
    return_total = 0
    if (roll_hash[1] >= 3)
            return_total += 1000
            roll_hash[1] -= 3
    end
    return_total += 100 * (roll_hash[1])
  end

  def self.check_for_triples roll_hash
    return_total = 0
    (2..6).each do |die|
      if (roll_hash[die] >= 3)
        return_total += (100 * die)
        roll_hash[die] -= 3 if die == 5
      end
    end

    return_total
  end

  def self.check_for_single_fives roll_hash
    return (50 * (roll_hash[5]))
  end
end
