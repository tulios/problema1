# Sequência:
#   n -> n/2
#   n -> 3n + 1

# ex: utilizando 13
#     13 40 20 10 5 16 8 4 2 1

# Qual inteiro positivo abaixo de 1 milhão (999.999) produz a sequência com mais itens

#>> Analisador.new 999_999
#>> Maior número: 837799 com 525 itens

class Seq
  
  def initialize n
    @n = n
    @n_original = @n
    @qtd_itens = 0
    self
  end
  
  def calc n = @n
    @qtd_itens += 1
    return @qtd_itens if n == 1
    return calc(n/2) if n.even?
    calc(3*n+1)
  end
  
end

class Analisador
  
  def initialize limite
    @limite = limite
    @maior_numero_itens = -1
    
    1.step(@limite, 2).each do |numero|
      resultado = Seq.new(numero).calc
      if resultado > @maior_numero_itens
        @maior_numero_itens = resultado 
        @maior_numero = numero
      end
    end
    
    puts "Maior número: #{@maior_numero} com #{@maior_numero_itens} itens"
  end
  
end