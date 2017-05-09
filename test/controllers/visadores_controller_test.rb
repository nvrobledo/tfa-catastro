require 'test_helper'

class VisadoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visador = visadores(:one)
  end

  test "should get index" do
    get visadores_url
    assert_response :success
  end

  test "should get new" do
    get new_visador_url
    assert_response :success
  end

  test "should create visador" do
    assert_difference('Visador.count') do
      post visadores_url, params: { visador: { apellido: @visador.apellido, documento: @visador.documento, matricula: @visador.matricula, nombre: @visador.nombre, tipos_documento: @visador.tipos_documento, zona: @visador.zona } }
    end

    assert_redirected_to visador_url(Visador.last)
  end

  test "should show visador" do
    get visador_url(@visador)
    assert_response :success
  end

  test "should get edit" do
    get edit_visador_url(@visador)
    assert_response :success
  end

  test "should update visador" do
    patch visador_url(@visador), params: { visador: { apellido: @visador.apellido, documento: @visador.documento, matricula: @visador.matricula, nombre: @visador.nombre, tipos_documento: @visador.tipos_documento, zona: @visador.zona } }
    assert_redirected_to visador_url(@visador)
  end

  test "should destroy visador" do
    assert_difference('Visador.count', -1) do
      delete visador_url(@visador)
    end

    assert_redirected_to visadores_url
  end
end
