require "test_helper"

class ServantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @servant = servants(:one)
  end

  test "should get index" do
    get servants_url
    assert_response :success
  end

  test "should get new" do
    get new_servant_url
    assert_response :success
  end

  test "should create servant" do
    assert_difference('Servant.count') do
      post servants_url, params: { servant: { name: @servant.name, phone: @servant.phone } }
    end

    assert_redirected_to servant_url(Servant.last)
  end

  test "should show servant" do
    get servant_url(@servant)
    assert_response :success
  end

  test "should get edit" do
    get edit_servant_url(@servant)
    assert_response :success
  end

  test "should update servant" do
    patch servant_url(@servant), params: { servant: { name: @servant.name, phone: @servant.phone } }
    assert_redirected_to servant_url(@servant)
  end

  test "should destroy servant" do
    assert_difference('Servant.count', -1) do
      delete servant_url(@servant)
    end

    assert_redirected_to servants_url
  end
end
