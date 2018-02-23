class Rot13
  def initialize(encrypted)
    @encrypted = encrypted
  end
  
  def decrypt
    @decrypted = @encrypted.map do |name|
      name.chars.map do |character|
        if character.match(/[^a-zA-Z]/)
          character
        elsif %w(n o p q r s t u v w x y z).include?(character.downcase)
          (character.ord - 13).chr
        else
          (character.ord + 13).chr
        end
      end.join(" ")
    end
  end
  
  def output_decrypted_names
    @decrypted.each {|word| puts word }
  end
end

list = ["Nqn Ybirynpr",
"Tenpr Ubccre",
"Nqryr Tbyqfgvar",
"Nyna Ghevat",
"Puneyrf Onoontr",
"Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv",
"Wbua Ngnanfbss",
"Ybvf Unvog",
"Pynhqr Funaaba",
"Fgrir Wbof",
"Ovyy Tngrf",
"Gvz Orearef-Yrr",
"Fgrir Jbmavnx",
"Xbaenq Mhfr",
"Fve Nagbal Ubner",
"Zneiva Zvafxl",
"Lhxvuveb Zngfhzbgb",
"Unllvz Fybavzfxv",
"Tregehqr Oynapu"]

a = Rot13.new(list)
a.decrypt
a.output_decrypted_names