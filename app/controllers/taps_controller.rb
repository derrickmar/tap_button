class TapsController < ApplicationController
  def create
    user = User.find_by_name(params[:username])
    tap = Tap.new
    tap.avatar = params[:file]
    tap.user = user
    tap.save!
  end
end
