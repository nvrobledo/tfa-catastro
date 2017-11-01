class Parcela < ApplicationRecord
	has_many :mensuras, inverse_of: :parcela
	accepts_nested_attributes_for :mensuras, reject_if: :all_blank, allow_destroy: true
end
