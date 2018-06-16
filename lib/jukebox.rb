songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  puts my_songs
end


def play(my_songs)
  puts "Please enter a song name or number:"
  userInput = gets.chomp
  if my_songs.include?(userInput)
    puts "Playing <#{userInput}>"
  elsif (userInput.to_i).integer? && (userInput.to_i) <= my_songs.length + 1 && (userInput.to_i) >= 1
    puts "Playing <#{my_songs[userInput.to_i - 1]}>"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help()
  puts "Please enter a command:"
  userInput = gets.chomp
  while userInput != "exit" do
    if userInput == "list"
      list()
    elsif userInput == "play"
      play()
    else
      help()
    end
  end
  exit_jukebox()
end
