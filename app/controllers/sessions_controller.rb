class SessionsController < ApplicationController

 def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end


      def email_params
        # params.permit(:email, :password, :password_confirmation).permit(:email)
        #  params[:user].permit(:email)
        #  params.require(:user).permit(:email)
      end
      def password_params
       #  params.permit(:email, :password, :password_confirmation).permit(:password)
        #  params[:user].permit(:password)
        # params.require(:user).permit(:password_digest)
      end


end
