class UsersController < Devise::RegistrationsController

  def edit
  end

  def update
    User.update(update_params)
    redirect_to :root
  end

  private
  def update_params
    params.require(:user).permit(:name, :email)
  end

end

