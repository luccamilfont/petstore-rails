require "test_helper"

class PetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet = pets(:one)
  end

  test "should get index" do
    get pets_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_url
    assert_response :success
  end

  test "should create pet" do
    assert_difference("Pet.count") do
      post pets_url, params: { pet: { client_id: @pet.client_id, name: @pet.name, species: @pet.species } }
    end

    assert_redirected_to pet_url(Pet.last)
  end

  test "should show pet" do
    get pet_url(@pet)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_url(@pet)
    assert_response :success
  end

  test "should update pet" do
    patch pet_url(@pet), params: { pet: { client_id: @pet.client_id, name: @pet.name, species: @pet.species } }
    assert_redirected_to pet_url(@pet)
  end

  test "should discard pet" do
    delete pet_url(@pet)
    assert_redirected_to pets_url

    @pet.reload
    assert @pet.discarded?
  end
end
