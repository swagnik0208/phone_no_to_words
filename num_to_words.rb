# Ruby 2.4.0

class NumToWords

	def find_matching_words(num)
		letter_words = {"2"=>["a","b","c"],"3"=>["d","e","f"],"4"=>["g","h","i"],"5"=>["j","k","l"],"6"=>["m","n","o"],"7"=>["p","q","r","s"],"8"=>["t","u","v"],"9"=>["w","x","y","z"]}
		matching_words=Hash.new
		final_array = Array.new
		all_words = {"10"=>[]}
		(3..7).each do|k|
			all_words[k.to_s] = []
		end
		File.foreach("dictionary.txt") do|x|
      if all_words.keys.include?(x.gsub("\n","").length.to_s)
        all_words[x.gsub("\n","").length.to_s] << x.gsub("\n","")
      end
    end
    num_a = num.split("")
    all_words.each_pair do|k,v|
      matching_words[k]=[]
      #num_a[0..(i-1)]
      v.each do|w|
        matched=true
        w_a = w.split("")
        w_a.each_with_index do|l,i|
          unless letter_words[num_a[i]].include?(l.downcase)
            matched = false
            break
          end
        end
        matching_words[k] << w if matched==true
      end
    end
    return matching_words
	end

end


