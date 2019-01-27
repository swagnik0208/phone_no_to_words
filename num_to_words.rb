#Ruby 2.4.0

class NumToWords

  LETTER_WORDS = {"2"=>["a","b","c"],"3"=>["d","e","f"],"4"=>["g","h","i"],"5"=>["j","k","l"],"6"=>["m","n","o"],"7"=>["p","q","r","s"],"8"=>["t","u","v"],"9"=>["w","x","y","z"]}

	def initialize
    @all_words = {"3"=>[],"4"=>[],"5"=>[],"6"=>[],"7"=>[],"10"=>[]}
		File.foreach("dictionary.txt") do|x|
      word = x.gsub("\n","")
      len = word.length.to_s
      if @all_words.keys.include?(len)
        @all_words[len] << word.downcase
      end
    end
  end

  def find_matching_words(num,detailed=false)
		matching_words=Hash.new
		final_array = Array.new
    num_a = num.split("")
    if num_a & ["0","1"] == []
      @all_words.keys.each do |k|
        matching_words[k] = return_matching_words(num_a[0..(k.to_i - 1)])
      end
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
            if detailed == true
              if remaining_length == 6
                s_comp_words = return_matching_words(num_a[4..6])
                unless s_comp_words.empty?
                  t_comp_words = return_matching_words(num_a[7..9])
                  unless t_comp_words.empty?
                    n.each do|f_w|
                      s_comp_words.each do|s|
                        t_comp_words.map{|t| final_array.push([f_w,s,t]) }
                      end
                    end
                  end
                end
              elsif remaining_length == 7
                [3,4].each do |y|
                  s_comp_words = return_matching_words(num_a[3..(2 + y)])
                  unless s_comp_words.empty?
                    t_comp_words = return_matching_words(num_a[(2+y+1)..9])
                    unless t_comp_words.empty?
                      n.each do|f_w|
                        s_comp_words.each do|s|
                          t_comp_words.map{|t| final_array.push([f_w,s,t]) }
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      unless matching_words["10"].empty?
        final_array.each do|f|
          if f.class.name == "Array"
            final_array.delete(f) if matching_words["10"].include?(f.join(""))
          end
        end
        final_array = final_array.uniq.sort
        matching_words["10"].sort.map{|m| final_array.push(m)}
      end
      return final_array
    else
      return "The input contains 0 or 1. So it is beyond the scope."
    end
	end

  def return_matching_words(num_array)
    matched_words = Array.new
    @all_words[num_array.length.to_s].each do|w|
      matched=true
      w_a = w.split("")
      w_a.each_with_index do|l,i|
        unless LETTER_WORDS[num_array[i]].include?(l)
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




