class Departamento < ApplicationRecord
	has_many :localidad
	has_many :mensura
end
