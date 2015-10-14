class Converter
  def initialize
    @a2r_dictionary = {1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V"}
  end
  def convert_to_roman(arabic_numeral)
    raise "Not a Number ! Only Integers Allowed" unless ((arabic_numeral.is_a?(Integer)) && (arabic_numeral > 0))
    @a2r_dictionary[arabic_numeral]
  end

end