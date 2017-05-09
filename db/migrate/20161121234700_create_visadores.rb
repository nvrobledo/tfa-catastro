class CreateVisadores < ActiveRecord::Migration[5.0]
  def change
    create_table :visadores do |t|
      t.string :apellido
      t.string :nombre
      t.integer :tipos_documento
      t.string :documento
      t.string :matricula
      t.integer :zona

      t.timestamps
    end
  end
end
