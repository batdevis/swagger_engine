module SwaggerEngine
  class ApplicationController < ActionController::Base

    before_filter :authenticate

    protected
    def authenticate
      if SwaggerEngine.configuration.admin_username
        authenticate_or_request_with_http_basic do |username, password|
          username == SwaggerEngine.configuration.admin_username && password == SwaggerEngine.configuration.admin_password
        end
      end
    end

  end
end
