class Expediente < ApplicationRecord
	belongs_to :tipo_expediente
	has_one :mensura

	def fecha_to_s
		fecha.strftime('%d-%m-%Y')
	end
end