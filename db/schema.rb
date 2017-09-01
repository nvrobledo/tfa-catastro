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

ActiveRecord::Schema.define(version: 20170621233057) do

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

  create_table "parcelas", force: :cascade do |t|
    t.integer  "propiedad_id"
    t.float    "superficie_catastro"
    t.float    "superficie_titulo"
    t.float    "superficie_mensura"
    t.float    "superficie_estimada"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "mensura_id"
    t.index ["mensura_id"], name: "index_parcelas_on_mensura_id", using: :btree
  end

  create_table "propiedades", force: :cascade do |t|
    t.string   "partida"
    t.integer  "propiedad_union_id"
    t.integer  "localidad_id"
    t.string   "irp_tomo"
    t.string   "irp_folio_real"
    t.string   "irp_folio_uf"
    t.integer  "cantidad_ocupantes"
    t.date     "fecha_aplicacion_decreto"
    t.integer  "coeficiente_prorrateo"
    t.integer  "superficie_unidad_funcional"
    t.string   "piso"
    t.string   "departamento"
    t.integer  "propiedad_block_id"
    t.integer  "tipo_propiedad_id"
    t.integer  "zona_id"
    t.integer  "jurisdiccion_id"
    t.boolean  "agua_cte"
    t.boolean  "cloaca"
    t.integer  "irp_finca"
    t.string   "exp_nro"
    t.integer  "exp_anio"
    t.string   "exp_letra"
    t.integer  "propiedad_origen_id"
    t.date     "fecha_vigencia"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
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
  add_foreign_key "parcelas", "mensuras"
  add_foreign_key "tipos_exptes_orig_acc", "tipos_expedientes", column: "tipos_expedientes_id", name: "tipos_exptes_orig_acc_tipos_expedientes_id_fkey"
  add_foreign_key "tipos_exptes_orig_acc", "tipos_origenes_acciones", column: "tipos_origenes_acciones_id", name: "tipos_exptes_orig_acc_tipos_origenes_acciones_id_fkey"
end
