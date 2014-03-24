require "spec_helper"

describe "components_path" do
  before do
    visit components_path
  end

  it "displays G5 Layout Garden" do
    expect(page).to have_content "G5 Layout Garden"
  end

  it "has 6 layouts marked up as .h-g5-component" do
    expect(all(".h-g5-component").length).to eq 3
  end

  describe "every layout" do
    it "has a name" do
      all(".h-g5-component").each do |layout|
        expect(layout.find(".p-name")).to be_present
      end
    end

    it "has a uid" do
      all(".h-g5-component").each do |layout|
        expect(layout.find(".u-uid")).to be_present
      end
    end

    it "has a summary" do
      all(".h-g5-component").each do |layout|
        expect(layout.find(".p-summary")).to be_present
      end
    end

    it "has a photo" do
      all(".h-g5-component").each do |layout|
        expect(layout.find(".u-photo")).to be_present
      end
    end

    it "has content" do
      all(".h-g5-component").each do |layout|
        expect(layout.find(".e-content")).to be_present
      end
    end
  end

  describe "some layouts" do
    it "have a stylesheet" do
      expect(all(".h-g5-component .u-g5-stylesheet").length).to be 2
    end
  end
end
