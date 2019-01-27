#Ruby 2.4.0

class NumToWords

  LETTER_WORDS = {"2"=>["a","b","c"],"3"=>["d","e","f"],"4"=>["g","h","i"],"5"=>["j","k","l"],"6"=>["m","n","o"],"7"=>["p","q","r","s"],"8"=>["t","u","v"],"9"=>["w","x","y","z"]}

	def initialize
    @all_words = {"10"=>[]}
		(3..7).each do|k|
			@all_words[k.to_s] = []
		end
		File.foreach("dictionary.txt") do|x|
      if @all_words.keys.include?(x.gsub("\n","").length.to_s)
        @all_words[x.gsub("\n","").length.to_s] << x.gsub("\n","")
      end
    end
  end

  def find_matching_words(num)
		matching_words=Hash.new
		final_array = Array.new
    num_a = num.split("")
    @all_words.keys.each do |k|
      matching_words[k] = return_matching_words(num_a[0..(k.to_i - 1)])
    end
#    all_words.each_pair do|k,v|
#      matching_words[k]=[]
#      #num_a[0..(i-1)]
#      v.each do|w|
#        matched=true
#        w_a = w.split("")
#        w_a.each_with_index do|l,i|
#          unless letter_words[num_a[i]].include?(l.downcase)
#            matched = false
#            break
#          end
#        end
#        matching_words[k] << w if matched==true
#      end
#    end
    matching_words.each_pair do|m,n|
      unless n.empty?
        remaining_length = 10 - m.to_i
        if remaining_length >= 3
          comp_words = return_matching_words(num_a[(m.to_i)..9])
          unless comp_words.empty?
            n.each do|f_w|
              comp_words.map{|c| final_array.push([f_w,c])}
            end
          end
#          all_words[remaining_length.to_s].each do|w|
#            matched=true
#            num_b = num_a[(m.to_i)..9]
#            w_a = w.split("")
#            w_a.each_with_index do|l,i|
#              unless letter_words[num_b[i]].include?(l.downcase)
#                matched = false
#                break
#              end
#            end
#            if matched == true
#              n.map{|w_m| final_array << [w_m,w]}
#            end
#
#          end
          if remaining_length >= 6

          end
        else
          n.map{|w_m| final_array << w_m}
        end
      end
    end
    return final_array
	end

  def return_matching_words(num_array)
    matched_words = Array.new
    @all_words[num_array.length.to_s].each do|w|
      matched=true
      w_a = w.split("")
      w_a.each_with_index do|l,i|
        unless LETTER_WORDS[num_array[i]].include?(l.downcase)
          matched = false
          break
        end
      end
      if matched == true
        matched_words << w
      end
    end
    return matched_words
  end

end


