require 'spec_helper'
require 'lanche'

RSpec.describe Lanche do


  context '#tem_ingrediente?' do
    context 'quando eu passo um nome de ingrediente' do
      context 'quando tem ingrediente' do
        it 'ele retorna true' do
          lanche = Lanche.new([
            Ingrediente.new('Alface', 1.25)
          ])

          expect(lanche.tem_ingrediente?('Alface')).to be(true)
        end
      end
      context 'quando nao tem ingrediente' do
        it 'ele retorna false' do
          lanche = Lanche.new([
            Ingrediente.new('Alface', 1.25)
          ])

          expect(lanche.tem_ingrediente?('Ovo')).to be(false)
        end
      end
    end
  end


  context '#preco' do
    context 'quando eu passo uma lista de ingredientes para o lanche' do
      it 'retorna o preco' do
        ingredientes = [
          Ingrediente.new('Alface', 1.25),
          Ingrediente.new('Pao', 1.00)
        ]

        lanche = Lanche.new(ingredientes)

        expect(lanche.preco).to eq(2.025)
      end
    end

    context 'quando eu passo uma nova lista de ingredientes para o lanche' do
      it 'retorna o preco' do
        ingredientes = [
          Ingrediente.new('Alface', 1.25),
          Ingrediente.new('Alface', 1.25),
          Ingrediente.new('Alface', 1.25),
          Ingrediente.new('Alface', 1.25),
          Ingrediente.new('Hamburguer de Carne', 3.00),
          Ingrediente.new('Pao', 1.00)
        ]

        lanche = Lanche.new(ingredientes)

        expect(lanche.preco).to eq(8.1)
      end
    end

    context 'quando eu passo uma outra lista de ingredientes para o lanche' do
      it 'retorna o preco' do
        ingredientes = [
          Ingrediente.new('Ovo', 2.25),
          Ingrediente.new('Pao', 1.00)
        ]

        lanche = Lanche.new(ingredientes)

        expect(lanche.preco).to eq(3.25)
      end
    end
  end

end
