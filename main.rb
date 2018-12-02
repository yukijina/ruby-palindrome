string1 = "hannah"
string2 = "abskksba"
string3 = "abyyuhughue"
string4 = "jhhhuuhhhj"
string5 = "jkhhhkj"
string6 = "Yo banana boy"
string7 = "UFO tofu"

#We want to find palindrom
#Bonus  - Also characters should not be duplicate

def find_palindrome(string)
  #\s, space and comma. \! exclamation mark. \- hyphen
  #replace to "" meaning no space, comma, ! and hypen
  str = string.gsub(/[\s,\!\-]/ ,"").downcase

  #divide string to two and compare first and second half of string.
  #preperation
    median = str.length / 2
    #get the first half of string. slice(index,length)
    first_half_str = str.slice(0,median)
    #get second half
    second_half_str = str.slice(median, str.length)
    revised_second_half_str = second_half_str.reverse

    #change strig to array and split to charactar to compare if there are duplicate charactar (we use uniq to get unique charactar)
    arr1 = first_half_str.split("").to_a
    arr2 = first_half_str.split("").to_a.uniq

    #check if first_half_str & second_half_str have same charactor.
    #if charactar is duplicate, output error message

  #when string.length is even number
  if str.length.even?
    if first_half_str == revised_second_half_str
        if arr1 != arr2
          puts "#{string} has more than two same charactors!"
        else
          puts "Yes, #{string} is a palindrome."
        end


    #if the above is incorrect, output error message
    elsif first_half_str != revised_second_half_str
      puts "#{string} is not palindrome!"
    end

  #when string is odd. *if odd, string.length is rounddown
  elsif str.length.odd?
    #get last charactar  *str[start, length]. -1 means last charactar
    last_char = revised_second_half_str[-1, 1]
    #remove last charactar
    second = revised_second_half_str.chomp(last_char)
    #now compare if first half and new second half has same charactar
    if first_half_str == second
        if arr1 != arr2
          puts "#{string} has more than two same charactors!"
        else
          puts "Yes, #{string} is a palindrome."
        end

    #if the above is incorrect, output error message
    elsif first_half_str != second
      puts "#{string} is not palindrome!"
    end

  end

end

find_palindrome(string)
