require 'test_helper'

class PropiedadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @propiedad = propiedades(:one)
  end

  test "should get index" do
    get propiedades_url
    assert_response :success
  end

  test "should get new" do
    get new_propiedad_url
    assert_response :success
  end

  test "should create propiedad" do
    assert_difference('Propiedad.count') do
      post propiedades_url, params: { propiedad: { agua_cte: @propiedad.agua_cte, cantidad_ocupantes: @propiedad.cantidad_ocupantes, cloaca: @propiedad.cloaca, coeficiente_prorrateo: @propiedad.coeficiente_prorrateo, departamento: @propiedad.departamento, exp_anio: @propiedad.exp_anio, exp_letra: @propiedad.exp_letra, exp_nro: @propiedad.exp_nro, fecha_aplicacion_decreto: @propiedad.fecha_aplicacion_decreto, fecha_vigencia: @propiedad.fecha_vigencia, irp_finca: @propiedad.irp_finca, irp_folio_real: @propiedad.irp_folio_real, irp_folio_uf: @propiedad.irp_folio_uf, irp_tomo: @propiedad.irp_tomo, jurisdiccion_id: @propiedad.jurisdiccion_id, localidad_id: @propiedad.localidad_id, partida: @propiedad.partida, piso: @propiedad.piso, propiedad_block_id: @propiedad.propiedad_block_id, propiedad_origen_id: @propiedad.propiedad_origen_id, propiedad_union_id: @propiedad.propiedad_union_id, superficie_unidad_funcional: @propiedad.superficie_unidad_funcional, tipo_propiedad_id: @propiedad.tipo_propiedad_id, zona_id: @propiedad.zona_id } }
    end

    assert_redirected_to propiedad_url(Propiedad.last)
  end

  test "should show propiedad" do
    get propiedad_url(@propiedad)
    assert_response :success
  end

  test "should get edit" do
    get edit_propiedad_url(@propiedad)
    assert_response :success
  end

  test "should update propiedad" do
    patch propiedad_url(@propiedad), params: { propiedad: { agua_cte: @propiedad.agua_cte, cantidad_ocupantes: @propiedad.cantidad_ocupantes, cloaca: @propiedad.cloaca, coeficiente_prorrateo: @propiedad.coeficiente_prorrateo, departamento: @propiedad.departamento, exp_anio: @propiedad.exp_anio, exp_letra: @propiedad.exp_letra, exp_nro: @propiedad.exp_nro, fecha_aplicacion_decreto: @propiedad.fecha_aplicacion_decreto, fecha_vigencia: @propiedad.fecha_vigencia, irp_finca: @propiedad.irp_finca, irp_folio_real: @propiedad.irp_folio_real, irp_folio_uf: @propiedad.irp_folio_uf, irp_tomo: @propiedad.irp_tomo, jurisdiccion_id: @propiedad.jurisdiccion_id, localidad_id: @propiedad.localidad_id, partida: @propiedad.partida, piso: @propiedad.piso, propiedad_block_id: @propiedad.propiedad_block_id, propiedad_origen_id: @propiedad.propiedad_origen_id, propiedad_union_id: @propiedad.propiedad_union_id, superficie_unidad_funcional: @propiedad.superficie_unidad_funcional, tipo_propiedad_id: @propiedad.tipo_propiedad_id, zona_id: @propiedad.zona_id } }
    assert_redirected_to propiedad_url(@propiedad)
  end

  test "should destroy propiedad" do
    assert_difference('Propiedad.count', -1) do
      delete propiedad_url(@propiedad)
    end

    assert_redirected_to propiedades_url
  end
end
