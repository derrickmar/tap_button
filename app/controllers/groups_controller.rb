class GroupsController < ApplicationController
  def show
    @taps = Tap.all

  end
end
