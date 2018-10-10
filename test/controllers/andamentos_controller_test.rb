require 'test_helper'

class AndamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @andamento = andamentos(:one)
  end

  test "should get index" do
    get andamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_andamento_url
    assert_response :success
  end

  test "should create andamento" do
    assert_difference('Andamento.count') do
      post andamentos_url, params: { andamento: { analisado: @andamento.analisado, consertado: @andamento.consertado, data: @andamento.data, entregue: @andamento.entregue, testado: @andamento.testado } }
    end

    assert_redirected_to andamento_url(Andamento.last)
  end

  test "should show andamento" do
    get andamento_url(@andamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_andamento_url(@andamento)
    assert_response :success
  end

  test "should update andamento" do
    patch andamento_url(@andamento), params: { andamento: { analisado: @andamento.analisado, consertado: @andamento.consertado, data: @andamento.data, entregue: @andamento.entregue, testado: @andamento.testado } }
    assert_redirected_to andamento_url(@andamento)
  end

  test "should destroy andamento" do
    assert_difference('Andamento.count', -1) do
      delete andamento_url(@andamento)
    end

    assert_redirected_to andamentos_url
  end
end
