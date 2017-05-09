require 'test_helper'

class JurisdiccionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jurisdiccion = jurisdicciones(:one)
  end

  test "should get index" do
    get jurisdicciones_url
    assert_response :success
  end

  test "should get new" do
    get new_jurisdiccion_url
    assert_response :success
  end

  test "should create jurisdiccion" do
    assert_difference('Jurisdiccion.count') do
      post jurisdicciones_url, params: { jurisdiccion: { departamento_id: @jurisdiccion.departamento_id, descripcion: @jurisdiccion.descripcion } }
    end

    assert_redirected_to jurisdiccion_url(Jurisdiccion.last)
  end

  test "should show jurisdiccion" do
    get jurisdiccion_url(@jurisdiccion)
    assert_response :success
  end

  test "should get edit" do
    get edit_jurisdiccion_url(@jurisdiccion)
    assert_response :success
  end

  test "should update jurisdiccion" do
    patch jurisdiccion_url(@jurisdiccion), params: { jurisdiccion: { departamento_id: @jurisdiccion.departamento_id, descripcion: @jurisdiccion.descripcion } }
    assert_redirected_to jurisdiccion_url(@jurisdiccion)
  end

  test "should destroy jurisdiccion" do
    assert_difference('Jurisdiccion.count', -1) do
      delete jurisdiccion_url(@jurisdiccion)
    end

    assert_redirected_to jurisdicciones_url
  end
end
