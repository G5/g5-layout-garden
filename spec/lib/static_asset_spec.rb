require 'spec_helper'

describe StaticAsset do

  describe "class" do
    let(:layouts) { StaticAsset.all }

    it "has 3 things" do
      layouts.should have(3).things
    end
  end
  describe "instance" do
    let(:layout) { StaticAsset.open('lib/layouts/single-column.html') }
    it "should have a layout" do
      layout.name.should eq "single-column"
    end
  end

end