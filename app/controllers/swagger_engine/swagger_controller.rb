require_dependency "swagger_engine/application_controller"

module SwaggerEngine
  class SwaggerController < ApplicationController
    layout false

    def index
      @swagger_json_url = ENV['SWAGGER_JSON_URL'] ||
        ActionController::Base.helpers.asset_path("swagger_engine/swagger.json") ||
        "http://petstore.swagger.io/v2/swagger.json"
    end
  end
end
