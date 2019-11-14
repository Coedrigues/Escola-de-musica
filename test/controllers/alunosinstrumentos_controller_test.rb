require 'test_helper'

class AlunosinstrumentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alunosinstrumento = alunosinstrumentos(:one)
  end

  test "should get index" do
    get alunosinstrumentos_url
    assert_response :success
  end

  test "should get new" do
    get new_alunosinstrumento_url
    assert_response :success
  end

  test "should create alunosinstrumento" do
    assert_difference('Alunosinstrumento.count') do
      post alunosinstrumentos_url, params: { alunosinstrumento: { aluno_id: @alunosinstrumento.aluno_id, instrumento_id: @alunosinstrumento.instrumento_id } }
    end

    assert_redirected_to alunosinstrumento_url(Alunosinstrumento.last)
  end

  test "should show alunosinstrumento" do
    get alunosinstrumento_url(@alunosinstrumento)
    assert_response :success
  end

  test "should get edit" do
    get edit_alunosinstrumento_url(@alunosinstrumento)
    assert_response :success
  end

  test "should update alunosinstrumento" do
    patch alunosinstrumento_url(@alunosinstrumento), params: { alunosinstrumento: { aluno_id: @alunosinstrumento.aluno_id, instrumento_id: @alunosinstrumento.instrumento_id } }
    assert_redirected_to alunosinstrumento_url(@alunosinstrumento)
  end

  test "should destroy alunosinstrumento" do
    assert_difference('Alunosinstrumento.count', -1) do
      delete alunosinstrumento_url(@alunosinstrumento)
    end

    assert_redirected_to alunosinstrumentos_url
  end
end
