require 'pry'

  def sort_by_appearance(characters_to_sort, long_text)
    array = []
    char_array = characters_to_sort.split("")
    result = char_array.each_with_object({}){|char, x| x[long_text.my_count(char)] = char}
    keys = result.keys.sort.reverse
    keys.map{|x| result[x]}.join
  end

class String
  def my_count(char)
    array = []
    self.split("").each do |x|
      if x == char
        array << x
      end
    end
    return array.size
  end
end
