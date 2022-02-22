def collatz(n, times = 0)
  if n == 1
    puts times
    return
  elsif (n%2) == 0
    times += 1
    puts "it ##{times}, solving #{n}/2"
    return collatz(n/2, times)
  else
    times += 1
    puts "it ##{times}, solving (3*#{n})+1"
    return collatz((3*n)+1, times)
  end
end


def palindrome?(string, n=0)
  if n == string.length
    return true
  elsif string[n] == string[(string.length - 1) - n]
    return palindrome?(string, (n+1))
  else 
    return false
  end
end

def bottle_counter(n)
  if n == 0
    puts "No more bottles of beer on the wall."
  else
    puts "#{n} bottles of bear on the wall. Take one down, pass it around, #{n-1} bottles of beer on the wall."
    bottle_counter(n-1)
  end
end

def my_fib(n)
  n < 3 ? 1 : (my_fib(n-1) + my_fib(n-2))
end


def flatten(array, result = [])
  array.each do |element|
    if element.kind_of?(Array)
      flatten(element, result)
    else
      result << element
    end
  end 
  result
end

def flatten_array(array, flat_array = [])
  array.each do |item|
    if item.is_a?(Integer)
      flat_array.push(item)
    elsif item.is_a?(Array)
      flatten_array(item, flat_array)
    else
      puts "#{item} is not an integer or an array."
    end
  end
  flat_array
end




puts my_fib(4)
puts my_fib(6)