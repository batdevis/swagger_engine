SwaggerEngine::Engine.routes.draw do
  resources :swaggers, only: [:index, :show]
  root 'swaggers#index'
end
