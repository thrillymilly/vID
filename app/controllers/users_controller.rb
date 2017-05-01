class UsersController < ApplicationController
  skip_before_action :require_login, only: :create

def create
    user = User.new(email: params[:email])

    user.password = params[:password]

    if user.save
      log_in(user)
    else
      if user.errors.messages.key?(:email)
        flash[:error] = "Email has already been taken."
      else
        flash[:error] = "Check that all required details have been filled in correctly."
      end
    end

    redirect_to :root
  end

  def show
  end
end
