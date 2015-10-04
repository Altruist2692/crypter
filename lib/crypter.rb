require "crypter/version"
require "crypter/caesar_cypher"
module Crypter
    extend CaesarCypher

    def self.included(base)
        base.send :extend, CaesarCypher
    end
    
end
