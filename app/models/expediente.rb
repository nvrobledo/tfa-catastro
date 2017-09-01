class Expediente < ApplicationRecord
	belongs_to :tipo_expediente

	def fecha_to_s
		fecha.strftime('%d-%m-%Y')
	end
end