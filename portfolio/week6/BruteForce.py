#!/usr/bin/python3
import hashlib
import string

#hidden password hash
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"

#Example for a 5 all lower case password.
#5 Nested four loops - goes over very possible combination of lower case letters untill guess is correct.
for firstChar in string.ascii_lowercase:
    for secondChar in string.ascii_lowercase:
        for thirdChar in string.ascii_lowercase:
            for fourChar in string.ascii_lowercase:
                for fithChar in string.ascii_lowercase:

                    #Joins the characters togeather.
                    guess = ''.join(firstChar + secondChar + thirdChar + fourChar + fithChar)

                    #Converts the guess to hash form.
                    guessHash = hashlib.sha256(guess.encode("utf-8")).hexdigest()
                    
                    #Checks to see if it is correct.
                    if  guessHash == passwordHash:
                        print("The password is: ", guess)
                        exit

