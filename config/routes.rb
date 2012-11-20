G5LayoutGarden::Application.routes.draw do

  get "layouts"            => "layouts#index", as: :layouts
  get "layouts/:file_name" => "layouts#show",  as: :layout

  get "feed/index"
  root to: "layouts#index"
end
