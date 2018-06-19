#!/usr/bin/env ruby

require_relative "../lib/jukebox"
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
  prompt = "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
  puts prompt
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  prompt = "Please enter a song name or number:"
  puts prompt
  answer = gets.chomp
  songs.each_with_index do |song, index|
    if songs.include?(answer)
      puts "Playing #{answer}"
    elsif (1..9).to_a.include?(answer.to_i)
      puts "Playing #{songs[answer.to_i - 1]}"
    else puts "Invalid input, please try again."
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  answer = ""
  while answer != "exit"
    puts "Please enter a command:"
    answer = gets.chomp
     if answer == "exit"
      exit_jukebox
    elsif answer == "list"
      list(songs)
    elsif answer == "play"
      play(songs)
    else help
    end
  end
end
