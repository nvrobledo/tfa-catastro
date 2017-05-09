class CreatePropiedades < ActiveRecord::Migration[5.0]
  def change
    create_table :propiedades do |t|
      t.string :partida
      t.integer :propiedad_union_id
      t.integer :localidad_id
      t.string :irp_tomo
      t.string :irp_folio_real
      t.string :irp_folio_uf
      t.integer :cantidad_ocupantes
      t.date :fecha_aplicacion_decreto
      t.integer :coeficiente_prorrateo
      t.integer :superficie_unidad_funcional
      t.string :piso
      t.string :departamento
      t.integer :propiedad_block_id
      t.integer :tipo_propiedad_id
      t.integer :zona_id
      t.integer :jurisdiccion_id
      t.boolean :agua_cte
      t.boolean :cloaca
      t.integer :irp_finca
      t.string :exp_nro
      t.integer :exp_anio
      t.string :exp_letra
      t.integer :propiedad_origen_id
      t.date :fecha_vigencia

      t.timestamps
    end
  end
end
