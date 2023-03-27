def caesar_cipher (string, shift)
  char_array = string.split("")
  int_array = []
  cipher_array = []
  char_array.each do |char|
    int_array.push(char.ord)
  end
  int_array.map! do |int|
    convert_to_cipher(int, shift)
  end
  int_array.each do |int|
    cipher_array.push(int.chr)
  end
  p string
  p cipher_array.join
end

def convert_to_cipher (integer, shift)
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

caesar_cipher("Test message", 4)