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
  binding.pry
  numbers = []
  songs.each_with_index do |tune, ind|
  numbers << ind + 1
  end
  puts "Please enter a song name or number:"
  input = gets.chomp
  if input == input.to_i && numbers.include?(input)
    songs.each_with_index do |song, index|
      if input == index + 1
        puts "Playing #{song}"
      end
    end
  elsif input == input.to_i && !numbers.include?(input)
    puts "Invalid input, please try again"
  end
end
