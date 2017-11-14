class Parcela < ApplicationRecord
	belongs_to :propiedad
	has_many :mensuras, -> { order(:mensura_nro) }
	#accepts_nested_attributes_for :mensuras, reject_if: :all_blank, allow_destroy: true
end
