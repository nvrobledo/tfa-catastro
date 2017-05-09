class Jurisdiccion < ApplicationRecord
  belongs_to :departamento
  has_many :mensura

  def caracter
  	LetraMensura.where(codigo: departamento_id).first.letra_mensura
  end

  def number
  	mensura = Mensura.where(mensura_letra: caracter).order(mensura_nro: :desc).first
  	if mensura
  	  mensura.mensura_nro
  	else
  	  0
  	end
  end
end
