# frozen_string_literal: true

module SwaggerEngine
  class Engine < ::Rails::Engine
    isolate_namespace SwaggerEngine

    # https://gist.github.com/parndt/11381872
    config.to_prepare do
      Rails.application.config.assets.precompile += %w[
        swagger_engine/print.css swagger_engine/reset.css
      ]
    end
  end

  class Configuration
    # [{ default: "swagger.json" }]
    attr_accessor :json_files
    attr_accessor :admin_username
    attr_accessor :admin_password
  end
  class << self
    attr_writer :configuration
  end

  module_function

  def configuration
    @configuration ||= Configuration.new
  end

  def configure
    yield(configuration)
  end
end
