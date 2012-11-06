require 'minitest/autorun'
require 'minitest/pride'
require_relative 'primes'

describe Problem7 do
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
