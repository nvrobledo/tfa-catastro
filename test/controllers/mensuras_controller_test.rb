require 'test_helper'

class MensurasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mensura = mensuras(:one)
  end

  test "should get index" do
    get mensuras_url
    assert_response :success
  end

  test "should get new" do
    get new_mensura_url
    assert_response :success
  end

  test "should create mensura" do
    assert_difference('Mensura.count') do
      post mensuras_url, params: { mensura: { expte_id: @mensura.expte_id, fecha_operaciones: @mensura.fecha_operaciones, fecha_registracion: @mensura.fecha_registracion, iniciador_id: @mensura.iniciador_id, jurisdiccion: @mensura.jurisdiccion, localidad: @mensura.localidad, mensura_letra: @mensura.mensura_letra, mensura_nro: @mensura.mensura_nro, objeto_id: @mensura.objeto_id, rectificacion_id: @mensura.rectificacion_id, visador_id: @mensura.visador_id } }
    end

    assert_redirected_to mensura_url(Mensura.last)
  end

  test "should show mensura" do
    get mensura_url(@mensura)
    assert_response :success
  end

  test "should get edit" do
    get edit_mensura_url(@mensura)
    assert_response :success
  end

  test "should update mensura" do
    patch mensura_url(@mensura), params: { mensura: { expte_id: @mensura.expte_id, fecha_operaciones: @mensura.fecha_operaciones, fecha_registracion: @mensura.fecha_registracion, iniciador_id: @mensura.iniciador_id, jurisdiccion: @mensura.jurisdiccion, localidad: @mensura.localidad, mensura_letra: @mensura.mensura_letra, mensura_nro: @mensura.mensura_nro, objeto_id: @mensura.objeto_id, rectificacion_id: @mensura.rectificacion_id, visador_id: @mensura.visador_id } }
    assert_redirected_to mensura_url(@mensura)
  end

  test "should destroy mensura" do
    assert_difference('Mensura.count', -1) do
      delete mensura_url(@mensura)
    end

    assert_redirected_to mensuras_url
  end
end
