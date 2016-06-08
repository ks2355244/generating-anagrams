# Place your solutions here.
=begin
		 1. Take input and dictionary of words.
		 2. Compare length of both word1 and word2.
		 	If not match, it's not an anagram. Move on to next word in dictionary.
		 3. Downcase, sort, and turn the string into indivdual characters before comparing.
		 	If match, put into array.
		 	If not match, it's not an anagram.
		 	Move on to next word in the dictionary.
		 4. Include itself into array.
		 5. At the end of the array, if no matches found, return an empty array ([]).
	=end
	
	# The dictionary is just an arbitrary collection of strings.
	# It need not contain English words, e.g., 'etlsm'.
	
	# Place your solutions here
	def anagrams_for(dictionary)
		puts "What word would you like to check for anagrams today?"
		word1 = gets.chomp
		new_array = []
		dictionary.each {|word2|
			if is_anagram?(word1, word2)
				new_array << word2
			end
		}
		return new_array
	end
	
	
	def is_anagram?(word1, word2)
		#compares word1 and word2 length, return false if not the same
		return false if word1.length != word2.length
	
		#if same length, downcase, turn each into individual chars and sort alphabetically
		if word1.downcase.chars.sort == word2.downcase.chars.sort
			return true
		else #means they do not equal each other and are not anagrams
			return false
		end
	end
	
	dictionary = ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm']
	anagrams_for(dictionary)

