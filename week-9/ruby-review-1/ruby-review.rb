
# Cipher Challenge

# I worked on this challenge by myself
# I spent .60 hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def dr_evils_cipher(coded_message)
  # takes coded_message, makes it lowercase, and splits it into an array by character.
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
  decoded_sentence = []
  # decoder. each letter is actually equal to the 4th letter before it.
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  # looping through each item in the array
  input.each do |x| # What is #each doing here?
    # found_match is false because we have not found what x is equal to
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    # looping through each key in cipher (the translator)
    cipher.each_key do |y| # What is #each_key doing here?
      # checks if x is a key in cipher
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        # if x is a key, then add y's value to the decoded sentence
        decoded_sentence << cipher[y]
        # since x is a key in cipher, found_match is true
        found_match = true
        # break is being used to break out of the cipher key loop
        break  # Why is it breaking here?
      # checks if x is a specuak character
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        # if x is a special character, add a space to the decoded sentence
        decoded_sentence << " "
        # since special characters are equal to spaces, found_match is true
        found_match = true
        # break is being used to break out of the cipher key loop
        break
      # checks is x is an integer
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        # if x is an integer, add the integer to the decoded sentence
        decoded_sentence << x
        # since integers are equal to integers, found_match is true
        found_match = true
        # break is being used to break out of the cipher key loop
        break
      end
    end
    # checks if found_match is false
    if not found_match  # What is this looking for?
      # if found_match is false, add x to the decoded_sentence
      decoded_sentence << x
    end
  end
  # return the decoded_sentence array joined together
  decoded_sentence = decoded_sentence.join("")
  #What is this method returning?
end


# Your Refactored Solution
def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  alphabet = ('a'..'z').to_a
  spaces = ["@", "#", "$", "%", "^", "&", "*"]
  cipher = {}
  
  alphabet.each_index do |x|
    cipher[alphabet[x]] = alphabet[x-4]
  end

  input.each do |x|
    if cipher.has_key?(x)
      decoded_sentence << cipher[x]
    elsif spaces.include?(x)
      decoded_sentence << " "
    else
      decoded_sentence << x
    end
  end
  
  decoded_sentence.join("")
end




# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")


# Reflection
# Keep your reflection limited to 10-15 minutes!

# What concepts did you review in this challenge?
# => I reviewed data types along with various methods in Ruby.
#
# What is still confusing to you about Ruby?
# => There are still so many methods that I have yet to explore.
# => I feel like there's a better way to create the cipher, but I'm satisfied.
#
# What are you going to study to get more prepared for Phase 1?
# => I'm going to try to explore as many of the Ruby methods as possible using the Ruby Docs.