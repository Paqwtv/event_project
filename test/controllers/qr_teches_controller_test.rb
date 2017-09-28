require 'test_helper'

class QrTechesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qr_tech = qr_teches(:one)
  end

  test "should get index" do
    get qr_teches_url
    assert_response :success
  end

  test "should get new" do
    get new_qr_tech_url
    assert_response :success
  end

  test "should create qr_tech" do
    assert_difference('QrTech.count') do
      post qr_teches_url, params: { qr_tech: {  } }
    end

    assert_redirected_to qr_tech_url(QrTech.last)
  end

  test "should show qr_tech" do
    get qr_tech_url(@qr_tech)
    assert_response :success
  end

  test "should get edit" do
    get edit_qr_tech_url(@qr_tech)
    assert_response :success
  end

  test "should update qr_tech" do
    patch qr_tech_url(@qr_tech), params: { qr_tech: {  } }
    assert_redirected_to qr_tech_url(@qr_tech)
  end

  test "should destroy qr_tech" do
    assert_difference('QrTech.count', -1) do
      delete qr_tech_url(@qr_tech)
    end

    assert_redirected_to qr_teches_url
  end
end
