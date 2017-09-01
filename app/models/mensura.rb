class Mensura < ApplicationRecord
	belongs_to :jurisdiccion
	belongs_to :expediente, foreign_key: :expte_id
	belongs_to :iniciador
	belongs_to :localidad
	belongs_to :visador
	validates :jurisdiccion_id, :objeto_id, :fecha_registracion, :razon_social, :localidad_id, :apellido, :fecha_operaciones, presence: true
end
