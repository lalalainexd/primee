require 'minitest/autorun'
require 'minitest/pride'
require 'time'
require_relative 'primes'

describe Problem7 do
  describe "Normal implementation" do
    it "should return 2 when finding the first prime" do
      Problem7.new.find_nth_prime(1).must_equal 2 
    end

    it "should return 3 when finding the second prime" do
      Problem7.new.find_nth_prime(2).must_equal 3 
    end

    it "should return 11 when finding the 5th prime" do
      Problem7.new.find_nth_prime(5).must_equal 11 
    end

    it "should return 229 when finding the 50th prime" do
      Problem7.new.find_nth_prime(50).must_equal 229 
    end

  end

  describe "Optimized implementation" do
    it "should return 2 when finding the first prime" do
      Problem7.new.find_nth_prime_optimized(1).must_equal 2 
    end

    it "should return 3 when finding the second prime" do
      Problem7.new.find_nth_prime_optimized(2).must_equal 3 
    end

    it "should return 11 when finding the 5th prime" do
      Problem7.new.find_nth_prime_optimized(5).must_equal 11 
    end

    it "should return 229 when finding the 50th prime" do
      Problem7.new.find_nth_prime_optimized(50).must_equal 229 
    end

  end

  describe "Compare optimized and normal implementation" do
    it "should return 7927 when finding the 1001st prime" do
      start_time = Time.now
      Problem7.new.find_nth_prime(1001).must_equal 7927 
      normal_time_elapsed = Time.now - start_time 
       

      start_time = Time.now
      Problem7.new.find_nth_prime_optimized(1001).must_equal 7927 
      optimized_time_elapsed = Time.now - start_time

      optimized_time_elapsed.must_be :< , normal_time_elapsed

      puts "Normal implementation takes #{normal_time_elapsed} to find the 1001st prime."
      puts "Optimized implementation takes #{optimized_time_elapsed} to find the 1001st prime."
    end
  end

end
