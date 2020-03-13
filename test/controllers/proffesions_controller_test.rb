require 'test_helper'

class ProffesionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proffesion = proffesions(:one)
  end

  test "should get index" do
    get proffesions_url
    assert_response :success
  end

  test "should get new" do
    get new_proffesion_url
    assert_response :success
  end

  test "should create proffesion" do
    assert_difference('Proffesion.count') do
      post proffesions_url, params: { proffesion: { name: @proffesion.name } }
    end

    assert_redirected_to proffesion_url(Proffesion.last)
  end

  test "should show proffesion" do
    get proffesion_url(@proffesion)
    assert_response :success
  end

  test "should get edit" do
    get edit_proffesion_url(@proffesion)
    assert_response :success
  end

  test "should update proffesion" do
    patch proffesion_url(@proffesion), params: { proffesion: { name: @proffesion.name } }
    assert_redirected_to proffesion_url(@proffesion)
  end

  test "should destroy proffesion" do
    assert_difference('Proffesion.count', -1) do
      delete proffesion_url(@proffesion)
    end

    assert_redirected_to proffesions_url
  end
end
