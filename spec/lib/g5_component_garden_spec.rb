require 'spec_helper'
require 'g5_component_garden'

describe G5ComponentGarden do
  before :each do
    stub_const("G5ComponentGarden::COMPONENT_PATH", "spec/support/components")
  end

  describe "all" do
    let(:components) { G5ComponentGarden.all }

    it "returns an Array" do
      components.should be_an_instance_of Array
    end
    it "returns an Array of components" do
      components.first.should be_an_instance_of HG5Component
    end
  end

  describe "find" do
    let(:component) { G5ComponentGarden.find("name-of-component") }

    it "returns a component" do
      component.should be_an_instance_of HG5Component
    end

    describe "#uid" do
      it "is an Url Property" do
        component.g5_uid.should be_an_instance_of Microformats2::Property::Url
      end

      it "contains the uid" do
        component.g5_uid.to_s.should == "name-of-component"
      end
    end

    describe "#name" do
      it "is a Text Property" do
        component.name.should be_an_instance_of Microformats2::Property::Text
      end

      it "contains the name" do
        component.name.to_s.should == "Name of Component"
      end
    end

    describe "#photo" do
      it "is a Url Property" do
        component.photo.should be_an_instance_of Microformats2::Property::Url
      end

      it "contains the photo" do
        component.photo.to_s.should == "support/components/name-of-component/images/thumbnail.png"
      end
    end

    describe "#photos" do
      it "is an Array" do
        component.photos.should be_an_instance_of Array
      end

      it "contains the photo" do
        component.photos.first.to_s.should == "support/components/name-of-component/images/thumbnail.png"
      end
    end

    describe "#summary" do
      it "is a Text Property" do
        component.summary.should be_an_instance_of Microformats2::Property::Text
      end

      it "contains the summary" do
        component.summary.to_s.should == "What this component does/looks like"
      end
    end

    describe "#images" do
      it "is an Array" do
        component.g5_images.should be_an_instance_of Array
      end

      it "contains images" do
        component.g5_images.map(&:to_s).should include("support/components/name-of-component/images/thumbnail.png")
      end
    end
  end
end
