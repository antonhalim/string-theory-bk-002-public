require 'pry'
  def sort_by_appearance(characters_to_sort, long_text)
    array = []
    char_array = characters_to_sort.split("")
    result = char_array.each_with_object({}){|char, x| x[long_text.count(char)] = char}
    keys = result.keys.sort.reverse
    keys.map{|x| result[x]}.join
  end
