class UsersController < Devise::RegistrationsController

  def edit
  end

  def update
    if current_user.update_with_password(update_params)
      redirect_to :root
    else
      # パスワードに誤りがある場合
      redirect_to edit_user_registration_path(current_user.id)
    end
  end

  private
  def update_params
    params.require(:user)
    .permit(:name, :email, :password, :current_password)
    .merge(password_confirmation: params.require(:user)[:confirm_password])
  end

end

