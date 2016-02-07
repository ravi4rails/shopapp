require 'test_helper'

class ProductBundlesControllerTest < ActionController::TestCase
  setup do
    @product_bundle = product_bundles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_bundles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_bundle" do
    assert_difference('ProductBundle.count') do
      post :create, product_bundle: { category_id: @product_bundle.category_id, description: @product_bundle.description, name: @product_bundle.name }
    end

    assert_redirected_to product_bundle_path(assigns(:product_bundle))
  end

  test "should show product_bundle" do
    get :show, id: @product_bundle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_bundle
    assert_response :success
  end

  test "should update product_bundle" do
    patch :update, id: @product_bundle, product_bundle: { category_id: @product_bundle.category_id, description: @product_bundle.description, name: @product_bundle.name }
    assert_redirected_to product_bundle_path(assigns(:product_bundle))
  end

  test "should destroy product_bundle" do
    assert_difference('ProductBundle.count', -1) do
      delete :destroy, id: @product_bundle
    end

    assert_redirected_to product_bundles_path
  end
end
