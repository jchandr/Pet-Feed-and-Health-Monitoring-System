class SessionsController < ApplicationController

  def new
    #@user = User.new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #session[:current_user_id] = @user.id
      if user.admin?
        log_in user
        remember user
        #session[:current_user_id] = user.id
        redirect_to admin_path, :notice => "Welcome Admin"
      else
        #redirect_to myaccount_path, :notice => "Login Successful"
        log_in user
        remember user
        #session[:current_user_id] = user.id
        redirect_to user, :notice => "Login Successful"
        #p "User login successful"
        #flash[:success] = 'Login Successful'
      end
    else
      #p "User login failure"
      redirect_to login_path, :notice => "Oops!! Invalid Username/Password. Please try again"
    end
  end  

  def destroy
    #log_out
    log_out if logged_in?
    redirect_to root_url
  end
end