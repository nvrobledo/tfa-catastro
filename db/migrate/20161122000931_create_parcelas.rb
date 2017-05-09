class CreateParcelas < ActiveRecord::Migration[5.0]
  def change
    create_table :parcelas do |t|
      t.integer :propiedad_id
      t.float :superficie_catastro
      t.float :superficie_titulo
      t.float :superficie_mensura
      t.float :superficie_estimada

      t.timestamps
    end
  end
end
