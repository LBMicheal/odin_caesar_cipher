string = "By the way"
shift = 5

char_array = string.split("")
int_array = []
cypher_array = []

char_array.each do |char|
  int_array.push(char.ord)
end

def convert_to_cipher (integer, shift)
  temp = 0
  unless integer == 33
    case integer
    when 65..90
      integer += shift
      if integer > 90
        temp = integer - 90
        integer = 64 + temp
      end
    when 97..122
      integer += shift
      if integer > 122
        temp = integer - 122
        integer = 96 + temp
      end
    end
    return integer
  end
end

int_array.map! do |int|
    convert_to_cipher(int, shift)
end

int_array.each do |int|
  cypher_array.push(int.chr)
end

p string
p cypher_array.join