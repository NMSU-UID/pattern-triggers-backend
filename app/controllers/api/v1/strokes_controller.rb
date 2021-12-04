class Api::V1::StrokesController < ApplicationController
  def index
    render json: {strokes: Stroke.all.as_json}
  end

  def create
    if Stroke.create(stroke_params)
      render json: {
        "success": true,
        "code": 201,
        "message": "Stroke successfully inserted"
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
    render json: {"stroke": Stroke.find(params[:user_id]).as_json}
  end

  private
  def stroke_params
    params.require(:stroke).permit(:user_id, :alphabet, :success)
  end
end
