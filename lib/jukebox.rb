require "pry"
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
  puts "- list: displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array)

  array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  numbers = []
  songs.each_with_index do |tune, ind|
    numbers << ind + 1
  end
  puts "Please enter a song name or number:"
  input = gets.chomp
  if numbers.include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  while command != exit
    if command == "help"
      help
    elsif command == "play"
      play
    elsif command == "list"
      list
    end
  end
end
