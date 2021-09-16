# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |i|
        sum+=i
        # Adding elements in each iteration
    end
    return sum
    #returning sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length==0
    return 0
  elsif arr.length==1
    return arr[0]
  else 
    new=arr.sort
    #sorting the array and storing the new array in new
    return new[new.length- 1]+new[new.length-2] 
    #adding the last 2 elements in the array to get the sum of 2 largest numbers
  end
    
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length<=1
    return false
  else
    for i in 0..(arr.length-1)
      #traversing through the indices upto arrray length
      for j in i+1..(arr.length-1)
        if arr[i]+arr[j]==n
          #if the sum of 2 numbers is equal to the n then we return true
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  return ("Hello, "+ name);
end

def starts_with_consonant?(s) 
   if s.length<1
     return false
   elsif s =~/^[A-Za-z]/
     #checking if the given string is a valid or not
        if not s =~/^[AEIOUaeiou]/
          #checking if the string starts with a consonant 
          return true
        else
          return false
        end 
   else
        return false
   end 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s=="0"
    return true
  elsif not s =~/[01]*/
    return false
    #checking if the string contains only binary values
  else
    return s =~/^[01]*00$/
    #checking if the binary string divisible by 4.
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn,price)
  #this function is used as a constructor to initialize the values of isbn and price
  raise ArgumentError if isbn == ""
  raise ArgumentError if price <= 0
  @isbn =isbn
  @price =price
end
def isbn
  #getter for isbn variable
  @isbn
end
def price
  #getter for price variable
  @price
end
def isbn=(isbn)
  #setter for isbn variable
  @isbn=isbn
end
def price=(price)
  #setter for price variable
  @price=price
end
def price_as_string()
  newprice ='$'
  #inserting dollar symbol into a new empty string
  newprice +=format('%.2f',@price.round(2))
  #formatting the string into rewuired format
  newprice.to_s()
  return  newprice
end
end
