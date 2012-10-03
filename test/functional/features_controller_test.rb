require 'test_helper'

class FeaturesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Feature.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Feature.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Feature.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to feature_url(assigns(:feature))
  end

  def test_edit
    get :edit, :id => Feature.first
    assert_template 'edit'
  end

  def test_update_invalid
    Feature.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Feature.first
    assert_template 'edit'
  end

  def test_update_valid
    Feature.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Feature.first
    assert_redirected_to feature_url(assigns(:feature))
  end

  def test_destroy
    feature = Feature.first
    delete :destroy, :id => feature
    assert_redirected_to features_url
    assert !Feature.exists?(feature.id)
  end
end
