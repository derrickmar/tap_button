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

  def collaborators
    @donor_images = Tap.all.map{|x| x.avatar.url}
    @patient_images = Patient.all.map{|x| x.image}
    end_i = [@donor_images.length, @patient_images.length].min-1
    @indices = (0..end_i)
    render 'layouts/collaborators'
  end
end
