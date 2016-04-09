class UsersController < ApplicationController
  def update
    user = User.find_by_name(params[:name])
    user.update!(params)
  end

  def pin_map
    user = User.find_by_name(params[:name])
    render json: {"1" => 1, "2" => 0, "3" => 0}
  end
end
