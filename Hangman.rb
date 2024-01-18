#array of the words to selected for the game
hangman_words = ["ruby", "python", "coding", "array", "function", "server", "network", "frontend", "backend", "routing",
                 "template", "middleware", "library", "algorithm", "efficiency", "iteration", "agile", "debug", "script",
                 "object", "class", "array", "loop", "computer", "server", "framework", "version", "testing", "deploy", "secure"]

# char_hash = Hash[('a'..'z').map { |char| [char, 1] }]
# puts char_hash

selected_word=hangman_words.sample.chars  #to select random word and convert it into character array
p selected_word


len=selected_word.length # length of the selected
# p len

chances=len #worng guess can be made

guess=0  # to track if all the characters are guessed right


guessed_word=Array.new  # array to uppend the guessed word
for i in 0...len do
    guessed_word.push ('_')
end

# p guessed_word


# to check if the chances are over or if the guess is done
while chances>0 and len!=guess

    gussed=false #to track if the letter is guessed correct
    p "guess a letter"
    gussed_char=gets.chomp
    # if char_array.include? guessed_word
    #to loop through the whole word
    for i in 0...len
        if(selected_word.at(i)==gussed_char)
            gussed=true
            guessed_word[i]=gussed_char
            selected_word[i]=nil
            break
        end
    end
    # end
    p guessed_word.join(" ")
    if(gussed==true)  #to increase guess or to decrease the chances if guessed correctly or wrong
        guess+=1
    else
        chances-=1
    end

    #final result
    if guess==len
        print "Congratulation you guessed the word right. The word is: "
        p guessed_word.join
        break
    end
    if chances==0
        print "Sorry, you are hanged try again. Your guess is: "
        p guessed_word.join(" ")
        break
    end

    # p "you have to guess #{len} characters"
    p "you still have #{chances} wrong chances left"


    
end