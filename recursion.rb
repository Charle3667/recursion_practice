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

puts palindrome?('cat')
puts palindrome?('kayak')
puts palindrome?('cannac')
puts palindrome?('cats')

