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
      post :create, missing_person: { age: @missing_person.age, description: @missing_person.description, eye_color: @missing_person.eye_color, first_name: @missing_person.first_name, found: @missing_person.found, found_location_lat: @missing_person.found_location_lat, found_location_long: @missing_person.found_location_long, hair_color: @missing_person.hair_color, height: @missing_person.height, initial_location_lat: @missing_person.initial_location_lat, initial_location_long: @missing_person.initial_location_long, last_name: @missing_person.last_name, middle_name: @missing_person.middle_name, race: @missing_person.race, sex: @missing_person.sex, status: @missing_person.status, submitter_id: @missing_person.submitter_id, weight: @missing_person.weight }
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
    patch :update, id: @missing_person, missing_person: { age: @missing_person.age, description: @missing_person.description, eye_color: @missing_person.eye_color, first_name: @missing_person.first_name, found: @missing_person.found, found_location_lat: @missing_person.found_location_lat, found_location_long: @missing_person.found_location_long, hair_color: @missing_person.hair_color, height: @missing_person.height, initial_location_lat: @missing_person.initial_location_lat, initial_location_long: @missing_person.initial_location_long, last_name: @missing_person.last_name, middle_name: @missing_person.middle_name, race: @missing_person.race, sex: @missing_person.sex, status: @missing_person.status, submitter_id: @missing_person.submitter_id, weight: @missing_person.weight }
    assert_redirected_to missing_person_path(assigns(:missing_person))
  end

  test "should destroy missing_person" do
    assert_difference('MissingPerson.count', -1) do
      delete :destroy, id: @missing_person
    end

    assert_redirected_to missing_people_path
  end
end
