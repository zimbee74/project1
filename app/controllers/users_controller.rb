class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new user_params   # strong params

    # upload image if given
    if params[:file].present?
      response = Cloudinary::Uploader.upload(params[:file])
      user.image = response["public_id"]
    end

    user.save  # persist the user object to the database

    if user.persisted?
      # Account created successfully!
      session[:user_id] = user.id   # Log in the new user!!
      redirect_to user_path(user)   # go to the show page for this user
    else
      # Account not created: show error

      # Set a flash key to show on the next page: it will be an array of error strings
      flash[:errors] = user.errors.full_messages
      redirect_to new_user_path  # /users/new, show the form again (with errors)
    end


  end

  def show
    @user = User.find params[:id]

  end

  def edit
@user = User.find params[:id]
  end


  def index
    @users = User.all
  end

  def update


  end

  def destroy
    user = User.find params[:id]  # key comes from /mixtapes/:id
    user.destroy
    redirect_to users_path
  end

  private
  # strong params, the doorman for the form fields
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
