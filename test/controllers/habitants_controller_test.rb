require 'test_helper'

class HabitantsControllerTest < ActionController::TestCase
  setup do
    @habitant = habitants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:habitants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create habitant" do
    assert_difference('Habitant.count') do
      post :create, habitant: { mail_address: @habitant.mail_address, name: @habitant.name, password: @habitant.password }
    end

    assert_redirected_to habitant_path(assigns(:habitant))
  end

  test "should show habitant" do
    get :show, id: @habitant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @habitant
    assert_response :success
  end

  test "should update habitant" do
    patch :update, id: @habitant, habitant: { mail_address: @habitant.mail_address, name: @habitant.name, password: @habitant.password }
    assert_redirected_to habitant_path(assigns(:habitant))
  end

  test "should destroy habitant" do
    assert_difference('Habitant.count', -1) do
      delete :destroy, id: @habitant
    end

    assert_redirected_to habitants_path
  end
end
