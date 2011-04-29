# Sequência:
#   n -> n/2
#   n -> 3n + 1

# ex: utilizando 13
#     13 40 20 10 5 16 8 4 2 1

# Qual inteiro positivo abaixo de 1 milhão (999.999) produz a sequência com mais itens

#>> Analisador.new 999_999
#>> Maior número: 837799 com 525 itens

#>> 84s - Maior número: 837799 com 525 itens

class CalculadorSequencia
  
  def initialize limite
    maior_numero_itens = -1
    maior_numero = 0
    
    t1 = Time.now.to_i
    1.step(limite, 2).each do |numero|
      resultado = calc(numero)
      maior_numero_itens, maior_numero = resultado, numero if resultado > maior_numero_itens
    end
    
    puts "#{Time.now.to_i - t1} - Maior número: #{maior_numero} com #{maior_numero_itens} itens"
  end
  
  private
  
  def calc n, qtd_itens = 0
    qtd_itens += 1
    return qtd_itens if n == 1
    return calc(n/2, qtd_itens) if n.even?
    calc(3*n+1, qtd_itens)
  end
  
end