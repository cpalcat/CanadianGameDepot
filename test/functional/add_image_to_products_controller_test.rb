require 'test_helper'

class AddImageToProductsControllerTest < ActionController::TestCase
  setup do
    @add_image_to_product = add_image_to_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_image_to_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_image_to_product" do
    assert_difference('AddImageToProduct.count') do
      post :create, add_image_to_product: @add_image_to_product.attributes
    end

    assert_redirected_to add_image_to_product_path(assigns(:add_image_to_product))
  end

  test "should show add_image_to_product" do
    get :show, id: @add_image_to_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_image_to_product
    assert_response :success
  end

  test "should update add_image_to_product" do
    put :update, id: @add_image_to_product, add_image_to_product: @add_image_to_product.attributes
    assert_redirected_to add_image_to_product_path(assigns(:add_image_to_product))
  end

  test "should destroy add_image_to_product" do
    assert_difference('AddImageToProduct.count', -1) do
      delete :destroy, id: @add_image_to_product
    end

    assert_redirected_to add_image_to_products_path
  end
end
