class Visador < ApplicationRecord
		belongs_to :tipo_documento, optional: true, foreign_key: :tipos_documento_id
		validates :tipos_documento_id, presence: true
	  validates :matricula, presence: true
    validates :apellido, presence: true
    validates :nombre, presence: true
    validates :documento, presence: true
    validates :zona, presence: true

		
end
