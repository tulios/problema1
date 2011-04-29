# encoding: utf-8

#>> load 'lib/calculador_sequencia.rb'
#>> CalculadorSequencia.new 999_999

# Ruby 1.8.7
#=> 84s - Maior número: 837799 com 525 itens

# Ruby 1.9.2
#=> 26s - Maior número: 837799 com 525 itens

class CalculadorSequencia
  
  attr_reader :maior_numero, :quantidade_itens
  
  def initialize limite
    raise "Limite deve ser um número!" if limite.class != Fixnum
    
    @quantidade_itens = -1
    @maior_numero = 0
    
    1.upto(limite).each do |numero|
      resultado = CalculadorSequencia.calc(numero)
      @quantidade_itens, @maior_numero = resultado, numero if resultado > @quantidade_itens
    end
  end

  def self.calc n, qtd_itens = 0
    qtd_itens += 1
    return qtd_itens if n == 1
    return calc(n/2, qtd_itens) if n.even?
    calc(3*n+1, qtd_itens)
  end
  
end