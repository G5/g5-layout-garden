require 'spec_helper'

describe StaticAsset do

  describe "class" do
    let(:static_assets) { StaticAsset.all }

    it "has 3 things" do
      static_assets.should have(3).things
    end
  end
  describe "instance" do
    let(:static_asset) { StaticAsset.open('lib/layouts/single-column.html') }
    it "should have a static_asset" do
      static_asset.name.should eq "single-column"
    end
  end

end
