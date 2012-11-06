As part of the gschool application, I wrote a solution to Problem7 of ProjectEuler in Ruby. 

It has two implmentations. find_nth_prime is a basic implementation and find_nth_prime_optimized is an optimization. For the optimized version, I added the logic that many numbers that are not prime can be factored by some number from 2 to 9. I also added the assumption that the first 4 primes are 2, 3, 5, and 7. If you run the test, you'll see that these assumptions cut runtime down to about 1/3 when looking for the 1001st prime. 

Tests may take some time to run, but that's normal because the find_nth_prime has a pretty crappy runtime.
