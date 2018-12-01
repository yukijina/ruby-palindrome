string1 = "hannah"
string2 = "abskksba"
string3 = "abyyuhughue"
string4 = "jhhhuuhhhj"
string5 = "jkhhhkj"

# We want to find palindrom which characters are not duplicate

def find_palindrome(string)
  #if string is odd, it is not find_palindrome
  if string.length.even?

  #if even, devide 2 and reverse the second part and compare if the first and second part has the same letter/order
    first_part_length = string.length / 2
    second_part_length = string.length
    #get the first part letters. slice(index,length)
    first_part_str = string.slice(0,first_part_length)
    #get_second_part
    second_part_str = string.slice(first_part_length,second_part_length)

    revised_second_part_str = second_part_str.reverse

    #change strig to array to compare if there are duplicate (we use uniq)
    arr1 = first_part_str.split("").to_a
    arr2 = first_part_str.split("").to_a.uniq

    #if letters have more than two charactor, output error message

    if first_part_str == revised_second_part_str
        if arr1 != arr2
          puts "#{string} has more than two same charactors!"
        else
          puts "Yes, #{string} is a palindrome."
        end

    #check if first_part_str & second_part_str have same charactor and retrun string

    #if the above is incorrect, output error message
    elsif first_part_str != revised_second_part_str
      puts "#{string} is not palindrome!"
    end

  #output error message if string is not palindrome
  else
    puts "#{string} is not palindrome!"
  end

end

find_palindrome(string5)
