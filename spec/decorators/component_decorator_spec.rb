require "spec_helper"

describe ComponentDecorator do
  before do
    @view_context = double(:view_context)
    @view_context.stub(:root_url).and_return("http://dummy.com/")
    @view_context.stub(:link_to) do |body, link|
      "<a href='#{link}'>#{body}</a>"
    end
    @component = double(:component)
    @component.stub(:some_method).and_return(:result)
  end

  let(:decorator) {ComponentDecorator.new(@component, @view_context)}

  it "should delegate methods to super" do
    decorator.some_method.should == :result
  end

  describe "#resource_link" do
    it "build a link to the full url" do
      link = decorator.resource_link(url: "http://dummy.com/identifier")
      link.should == "<a href='http://dummy.com/identifier'>http://dummy.com/identifier</a>"
    end
    it "should build a link given just the uid" do
      link = decorator.resource_link(uri: "identifier")
      link.should == "<a href='http://dummy.com/identifier'>http://dummy.com/identifier</a>"
    end
    it "should build a link with an explicit link body" do
      link = decorator.resource_link(uri: "identifier", body: "click me")
      link.should == "<a href='http://dummy.com/identifier'>click me</a>"
    end
  end
end
