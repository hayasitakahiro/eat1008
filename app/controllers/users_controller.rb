class UsersController < ApplicationController

  def show
    
   
    @user = User.find(params[:id])
    @cheat = @user.cheats
    
  
  end



end
