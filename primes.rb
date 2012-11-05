require 'set'

class Problem7
  def find_nth_prime(n)
    @primes = SortedSet.new 

    curr_number = 2
    while @primes.size < n
      unless can_factor curr_number
        @primes.add curr_number

      end
      curr_number += 1
    end

    return @primes.to_a.last
    
  end

  def can_factor(n)
   can_factor_by_primes(n) || can_factor_by_single_digits(n)
  end

  def can_factor_by_primes(n)
    @primes.inject(false){|contains, i| contains || n % i == 0 }
  end

  def can_factor_by_single_digits(n)
    single_digits = (2..9).to_a  
    single_digits.inject(false){|contains, i| contains || n % i == 0 }
  end
  
end

prob = Problem7.new

result = prob.find_nth_prime 1001

puts result
