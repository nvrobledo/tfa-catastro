class Mensura < ApplicationRecord
	belongs_to :jurisdiccion
	belongs_to :expediente, foreign_key: :expte_id, optional: true
	belongs_to :rectificacion, foreign_key: :rectificacion_id, optional: true, class_name: 'Mensura'
	belongs_to :iniciador, optional: true
	belongs_to :localidad, optional: true
	belongs_to :visador, optional: true
	belongs_to :objetos_mensura, optional: true, foreign_key: :objeto_id
	belongs_to :departamento, optional: true
	belongs_to :parcela, optional: true
	validates :jurisdiccion_id, :objeto_id, :fecha_registracion, presence: true

	
end
