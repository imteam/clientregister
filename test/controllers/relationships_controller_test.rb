require 'test_helper'

class RelationshipsControllerTest < ActionController::TestCase
  setup do
    @relationship = relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relationship" do
    assert_difference('Relationship.count') do
      post :create, relationship: { account_id: @relationship.account_id, address: @relationship.address, birthdate: @relationship.birthdate, deleted_since: @relationship.deleted_since, domicile: @relationship.domicile, firstname: @relationship.firstname, name: @relationship.name, nationality: @relationship.nationality, relationship_type: @relationship.relationship_type, since: @relationship.since }
    end

    assert_redirected_to relationship_path(assigns(:relationship))
  end

  test "should show relationship" do
    get :show, id: @relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relationship
    assert_response :success
  end

  test "should update relationship" do
    patch :update, id: @relationship, relationship: { account_id: @relationship.account_id, address: @relationship.address, birthdate: @relationship.birthdate, deleted_since: @relationship.deleted_since, domicile: @relationship.domicile, firstname: @relationship.firstname, name: @relationship.name, nationality: @relationship.nationality, relationship_type: @relationship.relationship_type, since: @relationship.since }
    assert_redirected_to relationship_path(assigns(:relationship))
  end

  test "should destroy relationship" do
    assert_difference('Relationship.count', -1) do
      delete :destroy, id: @relationship
    end

    assert_redirected_to relationships_path
  end
end
