class UsersController < ApplicationController
  before_filter :require_user, except: [:new, :create]

  expose(:users)
  expose(:user, attribute: :user_params)

  def create
    user = User.new(user_params)
    if user.save
      sign_in(user)
      redirect_to :root
    else
      render 'new'
    end 
  end

  def update
    if user.save
      redirect_to :root
    else
      render 'edit'
    end
  end

  def destroy
    clear_all_sessions_for(user)
    user.destroy
    redirect_to :root, message: "Account deleted."
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
