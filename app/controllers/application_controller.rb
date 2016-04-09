class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  def uploads
  	@taps = Tap.all.order('created_at desc')
  	render 'layouts/uploads'
  end

  def test_pins
  	render 'layouts/test_pins'
  end
end
