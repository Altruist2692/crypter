require 'test_helper'

class CrypterTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Crypter::VERSION
  end

  def test_encrypter
    assert_equal("ojt", CaesarCypher::Encrypt.new("nis", 1).encrypt )
  end

  def test_decryptor
    encrypted_text = CaesarCypher::Encrypt.new("nis", 1).encrypt
    assert_equal("nis", CaesarCypher::Decrypt.new(encrypted_text, 1).decrypt)
  end
end
