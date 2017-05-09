class CreateObjetosMensuras < ActiveRecord::Migration[5.0]
  def change
    create_table :objetos_mensuras do |t|
      t.text :descripcion

      t.timestamps
    end
  end
end
