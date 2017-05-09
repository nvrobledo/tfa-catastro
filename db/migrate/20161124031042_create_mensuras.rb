class CreateMensuras < ActiveRecord::Migration[5.0]
  def change
    create_table :mensuras do |t|
      t.integer :mensura_nro
      t.string :mensura_letra
      t.integer :objeto_id
      t.integer :localidad_id
      t.integer :jurisdiccion_id
      t.integer :rectificacion_id
      t.integer :iniciador_id
      t.date :fecha_operaciones
      t.date :fecha_registracion
      t.integer :expte_id
      t.integer :visador_id

      t.timestamps
    end
  end
end
