# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171016202414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barrios", force: :cascade do |t|
    t.string   "descripcion",               limit: 100
    t.bigint   "localidad_id"
    t.bigint   "cliente_id"
    t.string   "fecha_inicio",              limit: 1
    t.string   "fecha_fin",                 limit: 1
    t.bigint   "usuario_id"
    t.string   "version",                   limit: 1
    t.string   "fecha_baja",                limit: 1
    t.string   "fecha_alta",                limit: 1
    t.datetime "fecha_ultima_modificacion"
  end

  create_table "departamentos", force: :cascade do |t|
    t.string   "descripcion",               limit: 19
    t.bigint   "cliente_id"
    t.datetime "fecha_inicio"
    t.string   "fecha_fin",                 limit: 1
    t.bigint   "usuario_id"
    t.string   "version",                   limit: 1
    t.string   "fecha_baja",                limit: 1
    t.datetime "fecha_alta"
    t.datetime "fecha_ultima_modificacion"
  end

  create_table "estados_expedientes", force: :cascade do |t|
    t.string   "descripcion",               limit: 100
    t.bigint   "cliente_id"
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.bigint   "usuario_id"
    t.bigint   "version"
    t.datetime "fecha_baja"
    t.datetime "fecha_alta"
    t.datetime "fecha_ultima_modificacion"
  end

  create_table "expedientes", force: :cascade do |t|
    t.integer  "jurisdiccion_id"
    t.datetime "fecha"
    t.string   "nro_expediente",            limit: 100
    t.string   "poseedor",                  limit: 100
    t.string   "folio_real",                limit: 20
    t.string   "partida",                   limit: 9
    t.integer  "localidad_id"
    t.string   "observaciones",             limit: 255
    t.bigint   "cliente_id"
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.bigint   "usuario_id"
    t.bigint   "version"
    t.datetime "fecha_baja"
    t.integer  "iniciador_id"
    t.integer  "tipo_expediente_id"
    t.integer  "estado_expediente_id"
    t.datetime "fecha_alta"
    t.datetime "fecha_ultima_modificacion"
    t.bigint   "plazo_id"
  end

  create_table "iniciadores", force: :cascade do |t|
    t.integer  "tipo_documento_id"
    t.string   "matricula",                 limit: 100
    t.string   "razon_social",              limit: 100
    t.bigint   "cliente_id"
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.bigint   "usuario_id"
    t.float    "version"
    t.datetime "fecha_baja"
    t.datetime "fecha_alta"
    t.datetime "fecha_ultima_modificacion"
  end

  create_table "jurisdicciones", force: :cascade do |t|
    t.string   "descripcion",               limit: 100
    t.bigint   "departamento_id"
    t.bigint   "cliente_id"
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.bigint   "usuario_id"
    t.bigint   "version"
    t.datetime "fecha_baja"
    t.string   "codigo",                    limit: 2
    t.datetime "fecha_alta"
    t.datetime "fecha_ultima_modificacion"
  end

  create_table "letra_mensura", primary_key: "codigo", force: :cascade do |t|
    t.string "letra_mensura", limit: 2
  end

  create_table "localidades", force: :cascade do |t|
    t.string   "descripcion",               limit: 100
    t.integer  "departamento_id"
    t.bigint   "cliente_id"
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.bigint   "usuario_id"
    t.float    "version"
    t.datetime "fecha_baja"
    t.datetime "fecha_alta"
    t.datetime "fecha_ultima_modificacion"
  end

  create_table "logs_acciones", force: :cascade do |t|
    t.integer  "propiedad_id"
    t.string   "tabla_nombre",       limit: 30
    t.integer  "tipo_accion_id"
    t.bigint   "usuario_id"
    t.datetime "fecha"
    t.integer  "expediente_id"
    t.float    "tabla_versiones_id"
    t.string   "observacion",        limit: 255
    t.integer  "norma_id"
    t.integer  "origen_accion_id"
  end

  create_table "manzanas", force: :cascade do |t|
    t.string   "descripcion",               limit: 10
    t.integer  "localidad_id"
    t.bigint   "cliente_id"
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.bigint   "usuario_id"
    t.bigint   "version"
    t.datetime "fecha_baja"
    t.datetime "fecha_alta"
    t.datetime "fecha_ultima_modificacion"
  end

  create_table "mensuras", force: :cascade do |t|
    t.integer  "mensura_nro"
    t.string   "mensura_letra"
    t.integer  "objeto_id"
    t.integer  "localidad_id"
    t.integer  "jurisdiccion_id"
    t.integer  "rectificacion_id"
    t.integer  "iniciador_id"
    t.date     "fecha_operaciones"
    t.date     "fecha_registracion"
    t.integer  "expte_id"
    t.integer  "visador_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "calle"
    t.string   "propietario"
  end

  create_table "normas", force: :cascade do |t|
    t.bigint   "nro_norma"
    t.string   "letra_norma",               limit: 1
    t.datetime "fecha_norma"
    t.integer  "tipo_norma_id"
    t.datetime "fecha_inicio"
    t.string   "fecha_fin",                 limit: 1
    t.datetime "fecha_alta"
    t.string   "fecha_baja",                limit: 1
    t.bigint   "usuario_id"
    t.bigint   "cliente_id"
    t.bigint   "version"
    t.datetime "fecha_ultima_modificacion"
  end

  create_table "objetos_mensuras", force: :cascade do |t|
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "origenes_acciones", force: :cascade do |t|
    t.string   "descripcion",               limit: 30
    t.datetime "fecha_inicio"
    t.string   "fecha_fin",                 limit: 1
    t.datetime "fecha_alta"
    t.string   "fecha_baja",                limit: 1
    t.datetime "fecha_ultima_modificacion"
    t.bigint   "usuario_id"
    t.bigint   "cliente_id"
    t.bigint   "version"
    t.integer  "tipo_origen_accion_id"
  end

  create_table "origenes_acciones_tipos", force: :cascade do |t|
    t.integer  "origenes_acciones_id"
    t.integer  "tipos_origenes_acciones_id"
    t.datetime "fecha_inicio"
    t.string   "fecha_fin",                  limit: 1
    t.datetime "fecha_alta"
    t.string   "fecha_baja",                 limit: 1
    t.datetime "fecha_ultima_modificacion"
    t.bigint   "usuario_id"
    t.bigint   "cliente_id"
    t.bigint   "exige_norma"
    t.bigint   "exige_expediente"
  end

  create_table "parcelas", id: :bigint, force: :cascade do |t|
    t.bigint   "propiedad_id"
    t.decimal  "superficie_catastro",         precision: 12, scale: 4
    t.bigint   "superficie_titulo"
    t.decimal  "superficie_mensura",          precision: 10, scale: 4
    t.bigint   "superficie_estimada"
    t.bigint   "cliente_id"
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.bigint   "usuario_id"
    t.bigint   "version"
    t.datetime "fecha_baja"
    t.datetime "fecha_alta"
    t.datetime "fecha_ultima_modificacion"
    t.bigint   "tipo_parcela_id"
    t.decimal  "sup_calculo_valuacion",       precision: 8,  scale: 2
    t.bigint   "id_1"
    t.bigint   "propiedad_id_1"
    t.decimal  "superficie_catastro_1",       precision: 12, scale: 4
    t.bigint   "superficie_titulo_1"
    t.decimal  "superficie_mensura_1",        precision: 10, scale: 4
    t.bigint   "superficie_estimada_1"
    t.bigint   "cliente_id_1"
    t.datetime "fecha_inicio_1"
    t.datetime "fecha_fin_1"
    t.bigint   "usuario_id_1"
    t.bigint   "version_1"
    t.datetime "fecha_baja_1"
    t.datetime "fecha_alta_1"
    t.datetime "fecha_ultima_modificacion_1"
    t.bigint   "tipo_parcela_id_1"
    t.decimal  "sup_calculo_valuacion_1",     precision: 8,  scale: 2
  end

  create_table "propiedades", id: :bigint, force: :cascade do |t|
    t.string   "partida",                     limit: 9
    t.float    "propiedad_union_id"
    t.bigint   "localidad_id"
    t.string   "irp_tomo",                    limit: 15
    t.string   "irp_folio_real",              limit: 15
    t.text     "irp_folio_uf"
    t.string   "irp_anio",                    limit: 15
    t.float    "cantidad_ocupantes"
    t.datetime "fecha_aplicacion_decreto"
    t.float    "coeficiente_prorrateo"
    t.float    "superficie_unidad_funcional"
    t.text     "piso"
    t.text     "departamento"
    t.float    "propiedad_block_id"
    t.bigint   "tipo_propiedad_id"
    t.bigint   "zona_id"
    t.bigint   "jurisdiccion_id"
    t.string   "agua_cte",                    limit: 15
    t.string   "cloaca",                      limit: 15
    t.bigint   "cliente_id"
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.bigint   "usuario_id"
    t.bigint   "version"
    t.datetime "fecha_baja"
    t.float    "irp_finca"
    t.string   "exp_nro",                     limit: 15
    t.bigint   "exp_anio"
    t.string   "exp_letra",                   limit: 1
    t.datetime "fecha_vigencia"
    t.datetime "fecha_alta"
    t.datetime "fecha_ultima_modificacion"
    t.float    "propiedad_origen_id"
  end

  create_table "tipo_log_acciones", id: :integer, force: :cascade do |t|
    t.text    "descripcion"
    t.integer "cliente_id"
    t.date    "fecha_inicio"
    t.date    "fecha_fin"
    t.integer "usuario_id"
    t.integer "version"
    t.date    "fecha_baja"
    t.text    "modifica_datos"
    t.text    "log_activo"
    t.date    "fecha_alta"
    t.date    "fecha_ultima_modificacion"
    t.text    "muestra_en_historico"
  end

  create_table "tipos_documentos", force: :cascade do |t|
    t.string   "descripcion",               limit: 100
    t.bigint   "cliente_id"
    t.datetime "fecha_inicio"
    t.string   "fecha_fin",                 limit: 1
    t.bigint   "usuario_id"
    t.string   "version",                   limit: 1
    t.string   "fecha_baja",                limit: 1
    t.string   "descripcion_corta",         limit: 8
    t.datetime "fecha_alta"
    t.datetime "fecha_ultima_modificacion"
  end

  create_table "tipos_expedientes", force: :cascade do |t|
    t.string   "descripcion",               limit: 15
    t.bigint   "cliente_id"
    t.datetime "fecha_inicio"
    t.string   "fecha_fin",                 limit: 1
    t.bigint   "usuario_id"
    t.bigint   "version"
    t.string   "fecha_baja",                limit: 1
    t.datetime "fecha_alta"
    t.datetime "fecha_ultima_modificacion"
    t.bigint   "tarifa_fiscal"
    t.string   "tratamiento_especial",      limit: 1
    t.bigint   "id_ktl"
  end

  create_table "tipos_exptes_orig_acc", force: :cascade do |t|
    t.integer  "tipos_expedientes_id"
    t.integer  "tipos_origenes_acciones_id"
    t.datetime "fecha_inicio"
    t.string   "fecha_fin",                  limit: 1
    t.datetime "fecha_alta"
    t.datetime "fecha_ultima_modificacion"
    t.bigint   "cliente_id"
    t.string   "version",                    limit: 1
    t.string   "fecha_baja",                 limit: 1
    t.bigint   "usuario_id"
  end

  create_table "tipos_normas", force: :cascade do |t|
    t.string   "descripcion",               limit: 11
    t.datetime "fecha_inicio"
    t.string   "fecha_fin",                 limit: 1
    t.datetime "fecha_alta"
    t.string   "fecha_baja",                limit: 1
    t.datetime "fecha_ultima_modificacion"
    t.bigint   "cliente_id"
    t.bigint   "usuario_id"
    t.bigint   "version"
  end

  create_table "tipos_origenes_acciones", force: :cascade do |t|
    t.string   "descripcion",               limit: 33
    t.datetime "fecha_alta"
    t.string   "fecha_baja",                limit: 1
    t.datetime "fecha_inicio"
    t.string   "fecha_fin",                 limit: 1
    t.datetime "fecha_ultima_modificacion"
    t.bigint   "cliente_id"
    t.bigint   "version"
    t.bigint   "usuario_id"
  end

  create_table "visadores", force: :cascade do |t|
    t.string   "apellido"
    t.string   "nombre"
    t.integer  "tipos_documento"
    t.string   "documento"
    t.string   "matricula"
    t.integer  "zona"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "expedientes", "estados_expedientes", column: "estado_expediente_id", name: "expedientes_estado_expediente_id_fkey"
  add_foreign_key "expedientes", "iniciadores", name: "expedientes_iniciador_id_fkey"
  add_foreign_key "expedientes", "jurisdicciones", name: "expedientes_jurisdiccion_id_fkey"
  add_foreign_key "expedientes", "localidades", name: "expedientes_localidad_id_fkey"
  add_foreign_key "expedientes", "tipos_expedientes", column: "tipo_expediente_id", name: "expedientes_tipo_expediente_id_fkey"
  add_foreign_key "iniciadores", "tipos_documentos", column: "tipo_documento_id", name: "iniciadores_tipo_documento_id_fkey"
  add_foreign_key "localidades", "departamentos", name: "localidades_departamento_id_fkey"
  add_foreign_key "logs_acciones", "normas", name: "logs_acciones_norma_id_fkey"
  add_foreign_key "logs_acciones", "origenes_acciones", column: "origen_accion_id", name: "logs_acciones_origen_accion_id_fkey"
  add_foreign_key "manzanas", "localidades", name: "manzanas_localidad_id_fkey"
  add_foreign_key "normas", "tipos_normas", column: "tipo_norma_id", name: "normas_tipo_norma_id_fkey"
  add_foreign_key "origenes_acciones", "tipos_origenes_acciones", column: "tipo_origen_accion_id", name: "fk_origenes_acciones-tipos_origenes_acciones"
  add_foreign_key "origenes_acciones_tipos", "origenes_acciones", column: "origenes_acciones_id", name: "origenes_acciones_tipos_origenes_acciones_id_fkey"
  add_foreign_key "origenes_acciones_tipos", "tipos_origenes_acciones", column: "tipos_origenes_acciones_id", name: "origenes_acciones_tipos_tipos_origenes_acciones_id_fkey"
  add_foreign_key "tipos_exptes_orig_acc", "tipos_expedientes", column: "tipos_expedientes_id", name: "tipos_exptes_orig_acc_tipos_expedientes_id_fkey"
  add_foreign_key "tipos_exptes_orig_acc", "tipos_origenes_acciones", column: "tipos_origenes_acciones_id", name: "tipos_exptes_orig_acc_tipos_origenes_acciones_id_fkey"
end
