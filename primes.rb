require 'set'

class Problem7
  def find_nth_prime_optimized(n)
    @primes = SortedSet.new 

    curr_number = 2
    while @primes.size < n
      unless can_factor_optimized? curr_number
        @primes.add curr_number
      end
      curr_number += 1
    end

    return @primes.to_a.last
    
  end
  
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
  
  private

  def can_factor?(n)
    n != 2 && can_factor_by_primes?(n)
  end

  #Any number not a prime can be factored by some single digit or a prime number
  def can_factor_optimized?(n)
    ( not is_single_digit_prime?(n) ) && ( can_factor_by_single_digits?(n) || can_factor_by_primes?(n) )
  end

  def can_factor_by_primes?(n)
    @primes.inject(false){|contains, i| contains || n % i == 0 }
  end

  def can_factor_by_single_digits?(n)
    single_digits = (2..9).to_a  
    single_digits.inject(false){|contains, i| contains || n % i == 0 }
  end

  def is_single_digit_prime?(n)
    n == 2 || n == 3 || n == 5 || n == 7
  end

end
