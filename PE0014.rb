def collatz(n)
  n % 2 == 0 ? n/2 : 3*n+1
end

def gen_collatz(hash,start=2)
  sequence_length = 1 
  key = start
  while key < 1000000 do
    while start != 1 do
      start = collatz(start)
      sequence_length += 1
    end
    hash[key] = sequence_length
    start = key += 1
    sequence_length = 1
  end
end


def find_largest_value(hash)
  hash.max_by{|k,v| v}
end

chain = Hash.new

gen_collatz(chain)

puts find_largest_value(chain) 

