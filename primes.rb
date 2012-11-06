require 'set'

class Problem7
  def find_nth_prime(n)
    @primes = SortedSet.new 

    curr_number = 2
    while @primes.size < n
      unless can_factor? curr_number
        @primes.add curr_number
      end
      curr_number += 1
    end

    return @primes.to_a.last
    
  end

  def can_factor?(n)
    ( not is_single_digit_prime?(n) ) && ( can_factor_by_single_digits?(n) || can_factor_by_primes?(n) )
  end

  def can_factor_by_primes?(n)
    @primes.inject(false){|contains, i| contains || n % i == 0 }
  end

  #Any number not a prime can be factored by some single digit
  def can_factor_by_single_digits?(n)
    single_digits = (2..9).to_a  
    single_digits.inject(false){|contains, i| contains || n % i == 0 }
  end

  def is_single_digit_prime?(n)
    n == 2 || n == 3 || n == 5 || n == 7
  end

  private :can_factor?
  private :can_factor_by_primes?
  private :can_factor_by_single_digits?
  private :is_single_digit_prime?
  
end

prob = Problem7.new

result = prob.find_nth_prime 1001

puts result
