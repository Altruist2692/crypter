module CaesarCypher
  class Encrypt
    def initialize(text, key)
      @plaintext = text
      @key = key
    end

    def encrypt
      perform_encryption(@plaintext, @key)
    end

    private

    def perform_encryption(text, key)
      text.split('').map{|p| (char_mapper[p] + key)%26 }.map{|k| char_mapper.key(k)}.join
    end

    def num_value_of_char(char)
    char_mapper(num_index_in_array(char))
  end

  def num_index_in_array(char)
    char_mapper.index(char) + 1
  end

  def char_mapper
    ('a'..'z').zip(0..25).to_h
  end
  end

  class Decrypt
    def initialize(text, key)
      @cyphertext = text
      @key = key
    end

    def decrypt
      perform_decryption(@cyphertext, @key)
    end 

    def perform_decryption(text, key)
      text.split('').map{|c| (char_mapper[c] - key)%26 }.map{|k| char_mapper.key(k)}.join
    end

    def num_value_of_char(char)
    char_mapper(num_index_in_array(char))
  end

  def num_index_in_array(char)
    char_mapper.index(char) + 1
  end

  def char_mapper
    ('a'..'z').zip(0..25).to_h
  end
  end

  
end