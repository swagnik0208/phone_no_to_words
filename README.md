# phone_no_to_words
A ruby way to convert phone number to a word or a combination of words in order.

What does it do?

Given a 10 digit phone number as input, it returns the list of all possible combinations of words (minimum 3 letters per word) from the dictionary file included in the project, which can map directly in order, to form the phone number. Then number to letter mapping is as follows :

2 = a b c
3 = d e f
4 = g h i
5 = j k l
6 = m n o
7 = p q r s
8 = t u v
9 = w x y z

Ruby Version : 2.4.0

Example Usage :
=======================================

Open irb (2.4.0) inside project folder.
=> load 'num_to_words.rb'

## This mode only calculates upto combinations of 2 words.

=> NumToWords.new.find_matching_words("6686787825")
=> [["motor", "usual"], ["noun", "struck"], ["nouns", "truck"], ["nouns", "usual"], ["onto", "struck"], "motortruck"]

## This mode calculates all the possible combinations of words with 3 letters or more.

=> NumToWords.new.find_matching_words("6686787825",true)
=> [["mot", "opt", "puck"], ["mot", "opt", "ruck"], ["mot", "opt", "suck"], ["mot", "opts", "taj"], ["mot", "opus", "taj"], ["mot", "ort", "puck"], ["mot", "ort", "suck"], ["mot", "orts", "taj"], ["motor", "usual"], ["not", "opt", "puck"], ["not", "opt", "ruck"], ["not", "opt", "suck"], ["not", "opts", "taj"], ["not", "opus", "taj"], ["not", "ort", "puck"], ["not", "ort", "ruck"], ["not", "ort", "suck"], ["not", "orts", "taj"], ["noun", "pup", "taj"], ["noun", "pur", "taj"], ["noun", "pus", "taj"], ["noun", "struck"], ["noun", "sup", "taj"], ["noun", "suq", "taj"], ["nouns", "truck"], ["nouns", "usual"], ["onto", "pup", "taj"], ["onto", "pur", "taj"], ["onto", "pus", "taj"], ["onto", "struck"], ["onto", "sup", "taj"], ["onto", "suq", "taj"], ["oot", "opt", "puck"], ["oot", "opt", "ruck"], ["oot", "opt", "suck"], ["oot", "opts", "taj"], ["oot", "opus", "taj"], ["oot", "ort", "puck"], ["oot", "ort", "ruck"], ["oot", "ort", "suck"], ["oot", "orts", "taj"], "motortruck"]


Testing :
=======================================

Gem Required : rspec 3.8.0 with dependencies

$ ruby test_num_to_words.rb


===============================================================================================================================================

