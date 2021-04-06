require 'securerandom'

class RandCores
  def initialize
    @cor_hex = '#'
    @cores = []
    @solicitacao_usuario = gets.chomp.to_i
  end
  def cor
    while @solicitacao_usuario > 0 do
      @cor_hex += SecureRandom.hex(3)
      @cores.push(@cor_hex)
      @cor_hex = '#'
      @solicitacao_usuario -= 1
    end
    @cores.join("\n")
  end
end

s = RandCores.new()

f = File.new('randCoresv2.txt', 'w')
f = File.open('randCoresv2.txt', 'r+')
f.write(s.cor)
f.close
system 'notepad randCoresv2.txt'