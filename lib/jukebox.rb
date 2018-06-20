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
  prompt = "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
  puts prompt
end

def list(songs)
  songs.each_with_index do |element, index|
    puts "#{index}. #{element}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songs.each_with_index do |song, index|
    if input == song || input.to_i == index + 1
      puts "Playing #{song}"
      return
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox 
  puts "Goodbye"
end

def run(songs)
  help
  prompt = nil
  while prompt != "exit" do 
      puts "Please enter a command:"
      prompt = gets.chomp
      if prompt == "list" 
        list(songs)
      elsif prompt == "play"
        play(songs)
      elsif prompt == "help"
        help
      end
  end
  exit_jukebox
end