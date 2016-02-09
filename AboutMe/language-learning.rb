# A simple program that depicts my experience in learning (human) langauges, in rough order of apperance in life.

languages = ["English", "Italian", "French", "Spanish", "Latin", "Chinese", "Russian"]

for lang in languages do # my first Ruby for loop! I had to try it out in this simple program...

puts language.upcase # header for each language

    if language == "English"
        puts "English is my mother tongue -- a relevant phrase here, as my mother is as Irish (and as Bostonian) as they come. Against all odds, I do in fact pronounce my r's, and I quite love the oxford comma."
    elsif language == "Italian"
        puts "My father was born to an Italian family, and immigrated to the U.S. when he was two years old. I first started hearing Italian around the dinner table; his family would come around and my grandmother's broken English would soon devolve into spirited Italian. I formally studied it later in college, much to my grandmother's happiness."
    elsif language == "French"
        puts "Needless to say, Italians don't really like French on principle. That didn't stop my father from recording me trying to read a French menu when I was a toddler -- I don't think I'll ever live that down. Fast forward 20 years: I carried on a French conversation with a coworker for about a minute by cannibalizing pop songs (-coughcough- Destiny's Child), which ended when I proudly declared: 'Je suis une pomplemousse!'"
    elsif language == "Spanish"
        puts "I studied it from 5th grade all the way through high school, and it became my first true affair with the foreign language. Celia Cruz was my idol; I sang La Bamba in front of the school. One of my more rewarding experiences was teaching math and other academic subjects in Spanish to a 4th grade class at an English-Spanish bilingual school."
    elsif language == "Latin"
        puts "Salve! Qui dicit haec lingua mortua est?"
    elsif language == "Chinese"
        puts "Lack of grammar + many tones = sad Alex. This first foray into non-Romance languages did not last long." # Something I'd like to learn -- how to output foreign characters (unicode?)
    elsif language == "Russian"
        puts "After a strange incident involving a shiba inu and a husky, I decided to start Russian in my junior year of college in lieu of spending 1.5 years of bliss in Italy. Through intensive study here and abroad (I lived in Russia for 4 months), I became a Russian language analyst for the government, where I am today. Plus, I read some great books along the way, but please don't make me choose between Tolstoy and Dostoyevsky."
    end
    
    puts "\n\n"
    sleep(15) # to get that story-tellin' kind of feel
    
end

puts "The goal: learn to love programming languages as much as I love human languages. Whether with people or machines -- it's all communication at its core!"
    