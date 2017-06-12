require_dependency "swagger_engine/application_controller"

module SwaggerEngine
  class SwaggersController < ApplicationController
    layout false

    before_action :load_json_files

    def index
      redirect_to swagger_path(@json_files.first[0]) if ( @json_files.size == 1 )
    end

    def show
      respond_to do |format|
        format.html { 
          @swagger_json_url = swagger_path(params[:id], format: :json)
        }
        format.json { 
          send_file @json_files[params[:id].to_sym], type: 'application/json', disposition: 'inline'
        }
      end
    end

    private
    def load_json_files
      @json_files ||= SwaggerEngine.configuration.json_files || { default: "#{Rails.root}/lib/swagger_engine/swagger.json" }
    end
  end
end
