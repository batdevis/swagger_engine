SwaggerEngine::Engine.routes.draw do
  resources :swaggers, only: [:index, :show]
  root to: 'swaggers#index'
end
