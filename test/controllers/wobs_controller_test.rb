require 'test_helper'

class WobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wob = wobs(:one)
  end

  test "should get index" do
    get wobs_url
    assert_response :success
  end

  test "should get new" do
    get new_wob_url
    assert_response :success
  end

  test "should create wob" do
    assert_difference('Wob.count') do
      post wobs_url, params: { wob: { text: @wob.text } }
    end

    assert_redirected_to wob_url(Wob.last)
  end

  test "should show wob" do
    get wob_url(@wob)
    assert_response :success
  end

  test "should get edit" do
    get edit_wob_url(@wob)
    assert_response :success
  end

  test "should update wob" do
    patch wob_url(@wob), params: { wob: { text: @wob.text } }
    assert_redirected_to wob_url(@wob)
  end

  test "should destroy wob" do
    assert_difference('Wob.count', -1) do
      delete wob_url(@wob)
    end

    assert_redirected_to wobs_url
  end
end
