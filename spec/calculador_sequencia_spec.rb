require 'lib/calculador_sequencia'

describe CalculadorSequencia do
  
  it 'nao deveria aceitar um limite diferente de número' do
    lambda { CalculadorSequencia.new nil }.should raise_error
    lambda { CalculadorSequencia.new 'a' }.should raise_error
    lambda { CalculadorSequencia.new /a/ }.should raise_error
  end
  
  describe 'quando calculando a quantidade de itens para um determinado número' do
    
    it { CalculadorSequencia.calc(1).should eql 1 }
    it { CalculadorSequencia.calc(2).should eql 2 }
    it { CalculadorSequencia.calc(3).should eql 8 }
    it { CalculadorSequencia.calc(4).should eql 3 }
    it { CalculadorSequencia.calc(9).should eql 20 }
    it { CalculadorSequencia.calc(11).should eql 15 }
    it { CalculadorSequencia.calc(13).should eql 10}
    
  end
  
  describe 'quando calculando o maior número' do
    
    it { CalculadorSequencia.new(1).maior_numero.should eql 1 }
    it { CalculadorSequencia.new(2).maior_numero.should eql 2 }
    it { CalculadorSequencia.new(3).maior_numero.should eql 3 }
    it { CalculadorSequencia.new(4).maior_numero.should eql 3 }
    it { CalculadorSequencia.new(9).maior_numero.should eql 9 }
    it { CalculadorSequencia.new(11).maior_numero.should eql 9 }
    it { CalculadorSequencia.new(13).maior_numero.should eql 9 }
    
    context 'e recuperando a quantidade de itens' do
      
      it { CalculadorSequencia.new(1).quantidade_itens.should eql 1 }
      it { CalculadorSequencia.new(2).quantidade_itens.should eql 2 }
      it { CalculadorSequencia.new(3).quantidade_itens.should eql 8 }
      it { CalculadorSequencia.new(4).quantidade_itens.should eql 8 }
      it { CalculadorSequencia.new(9).quantidade_itens.should eql 20 }
      it { CalculadorSequencia.new(11).quantidade_itens.should eql 20 }
      it { CalculadorSequencia.new(13).quantidade_itens.should eql 20 }
      
    end
    
  end
  
end