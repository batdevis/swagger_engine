# frozen_string_literal: true

module SwaggerEngine
  class ApplicationController < ActionController::Base
    before_filter :authenticate

    protected

    def authenticate
      return unless SwaggerEngine.configuration.admin_username

      authenticate_or_request_with_http_basic do |username, password|
        username == SwaggerEngine.configuration.admin_username \
            && password == SwaggerEngine.configuration.admin_password
      end
    end
  end
end
