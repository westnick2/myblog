class UserController < ApplicationController
  # def name
  # end
  #
  # def email
  # end
  #
  # def password_digest
  # end

  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_params)
    if @user.save
      redirect_to root_url, notice: 'Thank you for signing up!'
    else
      render :new
    end
  end

  private

  def allowed_params
    params.require(:user).permit(:email, :password_digest)
  end
end
