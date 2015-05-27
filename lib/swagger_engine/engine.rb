module SwaggerEngine
  class Engine < ::Rails::Engine
    isolate_namespace SwaggerEngine

    initializer "swagger_engine.assets.precompile" do |app|
      app.config.assets.precompile += %w(print.css reset.css)
    end

  end
end
