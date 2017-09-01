require 'test_helper'

class IniciadoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @iniciador = iniciadores(:one)
  end

  test "should get index" do
    get iniciadores_url
    assert_response :success
  end

  test "should get new" do
    get new_iniciador_url
    assert_response :success
  end

  test "should create iniciador" do
    assert_difference('Iniciador.count') do
      post iniciadores_url, params: { iniciador: {  } }
    end

    assert_redirected_to iniciador_url(Iniciador.last)
  end

  test "should show iniciador" do
    get iniciador_url(@iniciador)
    assert_response :success
  end

  test "should get edit" do
    get edit_iniciador_url(@iniciador)
    assert_response :success
  end

  test "should update iniciador" do
    patch iniciador_url(@iniciador), params: { iniciador: {  } }
    assert_redirected_to iniciador_url(@iniciador)
  end

  test "should destroy iniciador" do
    assert_difference('Iniciador.count', -1) do
      delete iniciador_url(@iniciador)
    end

    assert_redirected_to iniciadores_url
  end
end
