# Do I know how to play your favorite song on ukulele? Probably not, but it's worth a spin!

curTime = Time.now.strftime("%m/%d/%Y")

def capSong(song) # Title-ize the songs
    song.split.each{|i| i.capitalize!}.join(' ')
end

$keepGoing = true

def tryAnother() # So that you can ask as many songs as you'd like!
    puts "\nWant to try another? (Y/N)"
    keepGoingAnswer = gets.chomp
    
    until false
        if keepGoingAnswer == "N"
            $keepGoing = false
            return false
            elsif keepGoingAnswer == "Y"
            $keepGoing = true
            return true
            else
            puts "Please choose Y or N."
            keepGoingAnswer = gets.chomp
        end
    end
end

indieKnown = ["barn song", "winter song", "the penalty", "sunday smile", "postcards from italy", "skinny love", "sit down by the fire", "anyone else but you"]

popKnown = ["titanium", "i choose you", "you and i", "you belong with me"]

countryKnown = ["wagon wheel", "drink you away"]

classicsKnown = ["somewhere over the rainbow", "imagine", "let it be"]

rockKnown = ["jumper", "wonderwall"]

recommendedSongs = []

while $keepGoing == true # while you still want to ask, per tryAnother
    
    puts "\nWhat's your favorite song?"
    favoriteSong = gets.chomp
    
    if indieKnown.include? favoriteSong.downcase # normalize
        favoriteSongCap = capSong(favoriteSong) # and title-ize!
        puts "\nAs of #{curTime}, I know how to play #{favoriteSongCap}. Ask me how sometime!"
        puts "\nBased on your favorite song, you may be interested in these songs I can play: "
        indieKnown.each do |song| # prints out the whole category (I'm a big fan of recommender systems, and I tried to create a somewhat janky version here!)
            puts capSong(song)
        end
        elsif popKnown.include? favoriteSong.downcase
        favoriteSongCap = capSong(favoriteSong)
        puts "\nAs of #{curTime}, I know how to play #{favoriteSongCap}. Ask me how sometime!"
        puts "\nBased on your favorite song, you may be interested in these songs I can play: "
        popKnown.each do |song|
            puts capSong(song)
        end
        elsif countryKnown.include? favoriteSong.downcase
        favoriteSongCap = capSong(favoriteSong)
        puts "\nAs of #{curTime}, I know how to play #{favoriteSongCap}. Ask me how sometime!"
        puts "\nBased on your favorite song, you may be interested in these songs I can play: "
        countryKnown.each do |song|
            puts capSong(song)
        end
        elsif classicsKnown.include? favoriteSong.downcase
        favoriteSongCap = capSong(favoriteSong)
        puts "\nAs of #{curTime}, I know how to play #{favoriteSongCap}. Ask me how sometime!"
        puts "\nBased on your favorite song, you may be interested in these songs I can play: "
        classicsKnown.each do |song|
            puts capSong(song)
        end
        elsif rockKnown.include? favoriteSong.downcase
        favoriteSongCap = capSong(favoriteSong)
        puts "\nAs of #{curTime}, I know how to play #{favoriteSongCap}. Ask me how sometime!"
        puts "\nBased on your favorite song, you may be interested in these songs I can play: "
        rockKnown.each do |song|
            puts capSong(song)
        end
        else
        favoriteSongCap = capSong(favoriteSong)
        puts "\nAs of #{curTime}, I don't know how to play #{favoriteSongCap} yet. I'll add it to the list!"
        recommendedSongs.unshift(favoriteSongCap)
        puts "\nRecommended songs:"
        recommendedSongs.each do |song|
            puts capSong(song)
        end
    end
    tryAnother # to see whether you want to keep going
end