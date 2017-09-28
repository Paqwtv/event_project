require 'test_helper'

class SnoopersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snooper = snoopers(:one)
  end

  test "should get index" do
    get snoopers_url
    assert_response :success
  end

  test "should get new" do
    get new_snooper_url
    assert_response :success
  end

  test "should create snooper" do
    assert_difference('Snooper.count') do
      post snoopers_url, params: { snooper: {  } }
    end

    assert_redirected_to snooper_url(Snooper.last)
  end

  test "should show snooper" do
    get snooper_url(@snooper)
    assert_response :success
  end

  test "should get edit" do
    get edit_snooper_url(@snooper)
    assert_response :success
  end

  test "should update snooper" do
    patch snooper_url(@snooper), params: { snooper: {  } }
    assert_redirected_to snooper_url(@snooper)
  end

  test "should destroy snooper" do
    assert_difference('Snooper.count', -1) do
      delete snooper_url(@snooper)
    end

    assert_redirected_to snoopers_url
  end
end
