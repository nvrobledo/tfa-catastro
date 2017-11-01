class AddCalleToMensuras < ActiveRecord::Migration[5.0]
  def change
    add_column :mensuras, :calle, :string
  end
end
