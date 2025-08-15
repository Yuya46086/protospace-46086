class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    if @user.nil?
      redirect_to root_path, alert: "指定されたユーザーは存在しません。"
    else
      @prototypes = @user.prototypes.includes(:user)
    end
  end
end