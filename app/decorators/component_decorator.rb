class ComponentDecorator < SimpleDelegator
  def initialize(component, view_context)
    super(component)
    @view_context = view_context
  end

  def resource_link(args={})
    url = args[:url]
    url ||= [_h.root_url, args[:uri]].join('')
    body = args[:body]
    body ||= url
    _h.link_to(body, url, args[:html])
  end

  def _h
    @view_context
  end
end
