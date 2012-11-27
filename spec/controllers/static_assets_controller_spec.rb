require 'spec_helper'

describe StaticAssetsController do
  
  describe "Index" do
    it "works" do
      get :index
      response.should be_successful
    end
  end
  
  describe "Show" do
    it "works" do
      get :show, file_name: "single-column"
      response.should be_successful
    end
  end
end