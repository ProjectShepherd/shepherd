require 'test_helper'

class SubmittersControllerTest < ActionController::TestCase
  setup do
    @submitter = submitters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:submitters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create submitter" do
    assert_difference('Submitter.count') do
      post :create, submitter: { email: @submitter.email, first_name: @submitter.first_name, last_name: @submitter.last_name, middle_name: @submitter.middle_name, phone_number: @submitter.phone_number }
    end

    assert_redirected_to submitter_path(assigns(:submitter))
  end

  test "should show submitter" do
    get :show, id: @submitter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @submitter
    assert_response :success
  end

  test "should update submitter" do
    patch :update, id: @submitter, submitter: { email: @submitter.email, first_name: @submitter.first_name, last_name: @submitter.last_name, middle_name: @submitter.middle_name, phone_number: @submitter.phone_number }
    assert_redirected_to submitter_path(assigns(:submitter))
  end

  test "should destroy submitter" do
    assert_difference('Submitter.count', -1) do
      delete :destroy, id: @submitter
    end

    assert_redirected_to submitters_path
  end
end
