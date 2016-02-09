# Testing your knowledge of Irish dancing!

puts "A game to determine how much you know about Irish dancing!"
puts "\nBACKSTORY:\nI started Irish dancing when I was 3 years old, after tugging on my (Irish) mother's sleeve at a dance show and begging her to sign me up for lessons. I hated it at first, quit, and reenrolled a year later; it proceeded to happily consume my life for the next 15 years."
puts "\nI traveled over 4 hours twice a week from Boston (my hometown) to Bay Ridge, Brooklyn and back again. I'd leave school for days at a time to travel for competitions, or to perform at Irish music shows: the Chieftans at Carnegie Hall, and right outside the Twin Towers in August 2001. I won my first Regionals at 7, began competing internationally at 10, got as high as 9th at Worlds, won Nationals when I was 16."
puts "\nWhen graduating from high school, I made the decision to take the academic path, and give up competitive (and professional) Irish dancing for a while. Who knows, maybe being back in New York will change that!"
puts "\nTHE GAME:\n1) There is no game.\n2) There are 5 multiple choice questions, with 3 answers each.\n3) You have 10 guesses total to answer all questions correctly and win the game."
puts "\nLet us begin!\n\n"

def isCorrect(numQues, answer) # testing whether your answer is correct
    answerKey = ["A", "C", "C", "A", "B"]
    
    if answerKey.include? answer # check for both valid input and answer
        if answer == answerKey[numQues-1] # account for index @ 0
            puts "\nCorrect!"
            return true #I'm aware from Learn's "Return Values" lesson that 'return' is generally not specified by Rubyists, but for learning, it helps to have things written out!
        else
            puts "\nIncorrect."
            return false
        end
    else
        puts "\nInvalid input -- unfortunately, that's gonna cost ya! Try again."
        return false
    end
end

def getAns(numQues)
    questionAns = gets.chomp.upcase # account for A and a
    return isCorrect(numQues, questionAns)
end

$guesses = 10
$questionNum = 1

until $guesses == 0
    questionsLeft = 6 - $questionNum # keeps track of how many questions left
    
    puts "QUESTION ##{$questionNum}" # header for each question
    
    if $questionNum == 1
        puts "Which of the following is NOT a type of Irish dancing tune?"
        puts "A) Cross eight"
        puts "B) Hornpipe"
        puts "C) Slip jig"
        
        elsif $questionNum == 2
        puts "How do you spell the Gaelic name for Irish dancing championship, pronounced 'or-ACK-tas'?"
        puts "A) Oractes"
        puts "B) Araicktas"
        puts "C) Oireachtas"
        
        elsif $questionNum == 3
        puts "Choose the item that is conventional for a dancer to wear during competition."
        puts "A) Crystal tiara"
        puts "B) Legwarmers"
        puts "C) Poodle socks" # also, sock glue, curly wigs -- a plethora of bizarre items
        
        elsif $questionNum == 4
        puts "After 2 rounds of competition, a dancer can qualify for the final round, called the 'set.' Which below are valid set tunes?"
        puts "A) Drunken Gauger" # I won Nationals with Drunken Gauger...
        puts "B) No Potatoes This Year"
        puts "C) Journey Across the Atlantic"
        
        elsif $questionNum == 5
        puts "Riverdance: is it a style of Irish dancing, or an Irish dancing show?"
        puts "A) Style"
        puts "B) Show" # possibly the biggest Irish dancing pet peeve...
        puts "C) Both"
    end
    
    answer = getAns($questionNum) # increment and decrement question number and guesses, depending on whether it's correct or not
    if answer
        $questionNum += 1 # correct answer
        else
        $guesses -=1 # incorrect answer
    end
    
    print "\nQuestions left: #{questionsLeft}\nGuesses left: #{$guesses}\n\n" # lets the user know how they're doing
end
