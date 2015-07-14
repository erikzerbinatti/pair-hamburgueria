class Lanche
  def initialize(ingredientes)
    @ingredientes = ingredientes
  end

  def preco
    preco = 0
    @ingredientes.each do |i|
      preco += i.preco
    end 

    preco *= 0.9 if tem_ingrediente?('Alface')

    preco
  end

  def tem_ingrediente?(nome_ingrediente)
    @ingredientes.any? do |i|
      i.nome == nome_ingrediente
    end
  end
end
