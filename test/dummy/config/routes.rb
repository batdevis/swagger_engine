# frozen_string_literal: true

Rails.application.routes.draw do
  mount SwaggerEngine::Engine => '/swagger_engine'
end
