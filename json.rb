require 'json'
require 'open-uri'

puts "Give me your github username"
print "> "
username = gets.chomp

url = "https://api.github.com/users/#{username}"

string = open(url).read

hash = JSON.parse(string)


puts "Hello #{hash["name"]}, you have #{hash["public_repos"]} public repositories"
