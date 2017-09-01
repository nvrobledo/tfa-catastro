class Iniciador < ApplicationRecord
	belongs_to :tipo_documento
	validates :tipo_documento_id, presence: true
	validates :matricula, presence: true
  validates :razon_social, presence: true
 end