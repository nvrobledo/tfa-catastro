class Propiedad < ApplicationRecord
	has_one :parcela
	belongs_to :localidad
	belongs_to :jurisdiccion
	belongs_to :departamento, optional: true

	
end
