G5LayoutGarden::Application.routes.draw do
  get "static_assets"            => "static_assets#index", as: :static_assets
  get "static_assets/:file_name" => "static_assets#show",  as: :static_asset
  root to: "static_assets#index"
end
