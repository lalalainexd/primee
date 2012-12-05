require 'set'

class Problem7
  def find_nth_prime_optimized(n)
    @primes = initial_set_of_primes

    curr_number = 3
    while @primes.size < n
      unless can_factor_optimized? curr_number
        @primes.add curr_number
      end
      curr_number += 1
    end

    @primes.to_a.last
  end

  def find_nth_prime(n)
    @primes = initial_set_of_primes

    curr_number = 3
    while @primes.size < n
      unless can_factor? curr_number
        @primes.add curr_number
      end
      curr_number += 1
    end

    @primes.to_a.last
  end

  private

  def can_factor?(n)
    can_factor_by_primes?(n)
  end

  #Any number not a prime can be factored by some single digit or a prime number
  def can_factor_optimized?(n)
    ( not is_single_digit_prime?(n) ) && ( can_factor_by_single_digits?(n) || can_factor_by_primes?(n) )
  end

  def can_factor_by_primes?(n)
    @primes.inject(false){|contains, i| contains || n % i == 0 }
  end

  def can_factor_by_single_digits?(n)
    single_digits.inject(false){|contains, i| contains || n % i == 0 }
  end

  def is_single_digit_prime?(n)
    single_digit_primes.include?(n)
  end

  def initial_set_of_primes
    SortedSet.new([2])
  end

  def single_digits
    @single_digits ||= (2..9).to_a
  end

  def single_digit_primes
    @single_digit_primes ||= [ 2, 3, 5, 7 ]
  end

end
