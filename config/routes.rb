G5LayoutGarden::Application.routes.draw do
  get "components"       => "components#index", as: :components
  get "components/:slug" => "components#show",  as: :component
  root to: "components#index"
end
