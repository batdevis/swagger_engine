module SwaggerEngine
  class Engine < ::Rails::Engine
    isolate_namespace SwaggerEngine

    #https://gist.github.com/parndt/11381872
=begin
    initializer "swagger_engine.assets.precompile", group: :all do |app|
      app.config.assets.precompile += ['swagger_engine/print.css', 'swagger_engine/reset.css']
    end
=end
    config.to_prepare do
      Rails.application.config.assets.precompile += ['swagger_engine/print.css', 'swagger_engine/reset.css']
    end

  end

  class Configuration
    #[{ default: "swagger.json" }]
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
