class UsersController < ApplicationController
  def show
    if !user_signed_in?
      redirect_to home_path
    end
  end
end
