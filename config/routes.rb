# frozen_string_literal: true

SwaggerEngine::Engine.routes.draw do
  resources :swaggers, only: %i[index show]
  root to: 'swaggers#index'
end
