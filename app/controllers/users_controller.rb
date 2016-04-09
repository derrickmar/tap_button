class UsersController < ApplicationController
  def update
    user = User.find_by_name(params[:name])
    user.update!(user_params)
    render json: true
  end

  def show
    @user = User.find(params[:id])
    @latest_tap = @user.taps.last
    @previous_score
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
