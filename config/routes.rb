G5LayoutGarden::Application.routes.draw do

  get "feed/index"
  root to: "feed#index"
end
