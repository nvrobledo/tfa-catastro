require 'test_helper'

class ObjetosMensurasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @objetos_mensura = objetos_mensuras(:one)
  end

  test "should get index" do
    get objetos_mensuras_url
    assert_response :success
  end

  test "should get new" do
    get new_objetos_mensura_url
    assert_response :success
  end

  test "should create objetos_mensura" do
    assert_difference('ObjetosMensura.count') do
      post objetos_mensuras_url, params: { objetos_mensura: { descripcion: @objetos_mensura.descripcion } }
    end

    assert_redirected_to objetos_mensura_url(ObjetosMensura.last)
  end

  test "should show objetos_mensura" do
    get objetos_mensura_url(@objetos_mensura)
    assert_response :success
  end

  test "should get edit" do
    get edit_objetos_mensura_url(@objetos_mensura)
    assert_response :success
  end

  test "should update objetos_mensura" do
    patch objetos_mensura_url(@objetos_mensura), params: { objetos_mensura: { descripcion: @objetos_mensura.descripcion } }
    assert_redirected_to objetos_mensura_url(@objetos_mensura)
  end

  test "should destroy objetos_mensura" do
    assert_difference('ObjetosMensura.count', -1) do
      delete objetos_mensura_url(@objetos_mensura)
    end

    assert_redirected_to objetos_mensuras_url
  end
end
