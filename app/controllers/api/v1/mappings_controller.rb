class Api::V1::MappingsController < ApplicationController
  def index
    render json: {"mappings": Mapping.all.as_json}
  end

  def create
    if Mapping.create(mapping_params)
      render json: {
        "success": true,
        "code": 201,
        "message": "Mapping successfully inserted"
      }
    else
      render json: {
        "success": true,
        "code": 500,
        "message": "Failed, internal server error!"
      }
    end
  end

  def show
    render json: {"mapping": Mapping.find(params[:user_id]).as_json}
  end

  private
  def mapping_params
    params.require(:mapping).permit(:user_id, :alphabet, :feature)
  end
end
