Rails.application.routes.draw do
  root to: "excels#index"
  resources :excels, only: [:index, :show, :edit, :destroy, :new]
end
