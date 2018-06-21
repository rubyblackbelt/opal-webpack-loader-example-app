class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def acting_user
    current_user
  end
end
