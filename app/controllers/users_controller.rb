class UsersController < ApplicationController

   def new
      @user = User.new
   end

   def create
      @user = User.create(user_params)
      if @user.save
           redirect_to @user, :notice => "Signed up"
      else
           render "new"
      end
   end

   def show
      @user = User.find(params[:id])
   end

   def destroy
      @user = User.find(params[:id])
      @user.destroy
      render 'new'
   end

    private
     
      def user_params
            params.require(:user).permit(:email, :password, :password_confirmation)
      end

end
