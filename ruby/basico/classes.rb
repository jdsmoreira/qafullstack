# Ruby é uma linguagem considerada puramente orientada a objetos
# Porque no Ruby tudo é objeto

# Classe possui atributos e metodos
# Caracteristicas e Ações

# Carro (Nome, Marca, Modelo, Cor, Quantidade portas, etc..)
# ligar, businar, parar, etc..

class Carro
  attr_accessor :nome

  def ligar
    puts "O carro está pronto para iniciar o trajeto."
  end
end

civic = Carro.new
civic.nome = "Civic"

puts civic.nome
civic.ligar
