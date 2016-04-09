class UsersController < ApplicationController
  def update
    user = User.find_by_name(params[:name])
    user.update!(user_params)
    render json: true
  end

  def show
  end

  def pin_map
    user = User.find_by_name(params[:name])
    render json: {"1" => 1, "2" => 0, "3" => 0}
  end

  private

  def user_params
    params.permit(:gcm_id)
  end
end
