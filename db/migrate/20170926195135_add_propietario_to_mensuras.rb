class AddPropietarioToMensuras < ActiveRecord::Migration[5.0]
  def change
    add_column :mensuras, :propietario, :string
  end
end
