#array of the words to selected for the game
hangman_words = ["ruby", "python", "coding", "array", "function", "server", "network", "frontend", "backend", "routing",
                 "template", "middleware", "library", "algorithm", "efficiency", "iteration", "agile", "debug", "script",
                 "object", "class", "array", "loop", "computer", "server", "framework", "version", "testing", "deploy", "secure"]

char_hash = Hash[('a'..'z').map { |char| [char, 1] }]
# puts char_hash

selected_word=hangman_words.sample.chars  #to select random word and convert it into character array
p selected_word

#to track the duplicate characters at one time hash is created
selected_word_hash=Hash.new
idx=0
selected_word.each do |char| 
    if selected_word_hash.has_key?(char)
        selected_word_hash[char]<<idx
    else
        arr=Array.new
        arr<<idx
        selected_word_hash[char]=arr
    end
    idx+=1
end

# p selected_word_hash

len=selected_word.length # length of the selected
# p len

chances= selected_word.uniq.length #worng guess can be made

guess=selected_word.uniq.length  # to track if all the characters are guessed right


guessed_word=Array.new  # array to uppend the guessed word
for i in 0...len do
    guessed_word.push ('_')
end

# p guessed_word


# to check if the chances are over or if the guess is done
while chances>0 and len!=guess
    p "guess a letter"
    gussed_char=gets.chomp
    # p char_hash
    # p char_hash[gussed_char]
    if char_hash[gussed_char]==0  #to check if the letter is already guessed or not
        p "Letter #{gussed_char} is already guessed enter another Letter"
        next
    else 
        char_hash[gussed_char]=0
    end

    if selected_word_hash.has_key?(gussed_char) #if the word has character guessed by user then the guessed word will be updated
        selected_word_hash[gussed_char].each {|ele| guessed_word[ele]=gussed_char}
        char_hash[gussed_char]=0
        guess-=1
    else
        chances-=1
    end

    p guessed_word.join(" ")

    #final result
    if guess==0
        print "Congratulation you guessed the word right. The word is: "
        p guessed_word.join
        break
    end
    if chances==0
        print "Sorry, you are hanged try again. Your guess is: "
        p guessed_word.join(" ")
        break
    end
    p "you still have #{chances} wrong chances left"    
end