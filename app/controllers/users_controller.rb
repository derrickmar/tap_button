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
    render json: user.pin_map
    # {"1" => rand(0..1), "2" => rand(0..1), "3" => rand(0..1)}
    # render json: {'1'=>1,'2'=>0,'3'=>1}
  end

  private

  def user_params
    params.permit(:gcm_id)
  end

end
