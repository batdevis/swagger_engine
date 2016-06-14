SwaggerEngine::Engine.routes.draw do
  #resources :swaggers, only: :show, defaults: { format: 'html' }
  root to: 'swaggers#show'
end
