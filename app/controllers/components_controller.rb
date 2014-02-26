class ComponentsController < ::ApplicationController
  def index
    if stale?(last_modified: G5ComponentGarden.last_modified)
      @components = G5ComponentGarden.all.map do |component|
        ComponentDecorator.new(component, view_context)
      end
    end
  end

  def show
    if stale?(last_modified: G5ComponentGarden.last_modified)
      component = G5ComponentGarden.find(params[:slug])
      @component = ComponentDecorator.new(component, view_context)
    end
  end
end
