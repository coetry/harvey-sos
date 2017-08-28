require 'test_helper'

class EmergenciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emergency = emergencies(:one)
  end

  test "should get index" do
    get emergencies_url
    assert_response :success
  end

  test "should get new" do
    get new_emergency_url
    assert_response :success
  end

  test "should create emergency" do
    assert_difference('Emergency.count') do
      post emergencies_url, params: { emergency: { first_name: @emergency.first_name, last_name: @emergency.last_name, location: @emergency.location, notes: @emergency.notes, number_of_adults: @emergency.number_of_adults, number_of_children: @emergency.number_of_children, number_of_pets: @emergency.number_of_pets } }
    end

    assert_redirected_to emergency_url(Emergency.last)
  end

  test "should show emergency" do
    get emergency_url(@emergency)
    assert_response :success
  end

  test "should get edit" do
    get edit_emergency_url(@emergency)
    assert_response :success
  end

  test "should update emergency" do
    patch emergency_url(@emergency), params: { emergency: { first_name: @emergency.first_name, last_name: @emergency.last_name, location: @emergency.location, notes: @emergency.notes, number_of_adults: @emergency.number_of_adults, number_of_children: @emergency.number_of_children, number_of_pets: @emergency.number_of_pets } }
    assert_redirected_to emergency_url(@emergency)
  end

  test "should destroy emergency" do
    assert_difference('Emergency.count', -1) do
      delete emergency_url(@emergency)
    end

    assert_redirected_to emergencies_url
  end
end
