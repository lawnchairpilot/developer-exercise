class Exercise

    # Assume that "str" is a sequence of words separated by spaces.
    # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
    # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
    def self.marklar(str)
      str.gsub!(/\b\w{5,}\b/) do |word|   # regex to find words > 4 chars
          if ('A'..'Z') === word[0]       # if word begins with a capital letter
              "Marklar"
          else
              "marklar"
          end
      end
    
      return str

    end
  
    # Return the sum of all even numbers in the Fibonacci sequence, up to
    # the "nth" term in the sequence
    # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
    # and the sum of its even numbers is (2 + 8) = 10
    def self.even_fibonacci(nth)
      # fill an array with all fib numbers up to nth
      fib_seq = []
      prev_num = 0
      cur = 1
      index = 1
      nex = 1
      while index <= nth
        fib_seq.push(nex)
        nex = prev_num + cur
        prev_num = cur
        cur = nex
        index += 1
      end
      # parse for even numbers and add them up
      answer = 0
      for num in fib_seq
        if num % 2 == 0
            answer += num
        end
      end
      return answer
    end
  
end