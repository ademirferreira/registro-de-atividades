Rails.application.routes.draw do
  root to: "atividades#index"
  resources :atividades  
end
