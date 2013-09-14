require 'test_helper'

class MissingPeopleControllerTest < ActionController::TestCase
  setup do
    @missing_person = missing_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:missing_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create missing_person" do
    assert_difference('MissingPerson.count') do
      post :create, missing_person: { description: @missing_person.description, first_name: @missing_person.first_name, found: @missing_person.found, last_name: @missing_person.last_name, location_lat: @missing_person.location_lat, location_long: @missing_person.location_long, middle_name: @missing_person.middle_name, notes: @missing_person.notes, status: @missing_person.status, submitter_id: @missing_person.submitter_id }
    end

    assert_redirected_to missing_person_path(assigns(:missing_person))
  end

  test "should show missing_person" do
    get :show, id: @missing_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @missing_person
    assert_response :success
  end

  test "should update missing_person" do
    patch :update, id: @missing_person, missing_person: { description: @missing_person.description, first_name: @missing_person.first_name, found: @missing_person.found, last_name: @missing_person.last_name, location_lat: @missing_person.location_lat, location_long: @missing_person.location_long, middle_name: @missing_person.middle_name, notes: @missing_person.notes, status: @missing_person.status, submitter_id: @missing_person.submitter_id }
    assert_redirected_to missing_person_path(assigns(:missing_person))
  end

  test "should destroy missing_person" do
    assert_difference('MissingPerson.count', -1) do
      delete :destroy, id: @missing_person
    end

    assert_redirected_to missing_people_path
  end
end
