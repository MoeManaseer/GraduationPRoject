class UsersController < ApplicationController
  before_action :isAdmin, only: [:new, :create, :index, :destroy]
  def new
    @user = User.new
  end
  def create
  @user = User.new(post_params)
  if @user.save
    flash[:notice] = "تم اضافة موظف جديد"
    render 'new'
  else
    flash[:notice] = "حدث هناك خطأ"
    render 'new'
  end
  end
  def index
  @users = User.all
  end
  def destroy
    logger = Rails.logger
    logger.info params
    @user = User.find(params[:user])
    @user.destroy
    redirect_to show_path
  end
  private
  def isAdmin
    if !logged_in?
      flash[:danger] = "لا تستطيع فعل هذه العملية"
      redirect_to root_path
    else
      if !current_user.admin
        flash[:danger] = "لا تستطيع فعل هذه العملية"
        redirect_to root_path
      end
    end
  end
  def post_params
    params.require(:user).permit(:username,:password,:firstname,:lastname,:admin)
  end
end
