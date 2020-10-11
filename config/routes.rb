Rails.application.routes.draw do
  get 'arquivos/index'
  root to: "atividades#index"
  resources :atividades  
end
