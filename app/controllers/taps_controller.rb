class TapsController < ApplicationController
  def create
    user = User.find_by_name(params[:username])
    tap = Tap.new
    tap.avatar = params[:file]
    tap.user = user
    offset = rand(Patient.count)
    tap.patient = Patient.offset(offset).first
    tap.save!
    user.browser_push
  end
end
