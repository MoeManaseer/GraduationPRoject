class Forms4Controller < ApplicationController
  def new
    @form = Form4.new
  end

  def create
    @form = Form4.new(post_params)
    @form.formType = "4"
    @form.save
    flash[:notice] = "تم البعث ب نجاح"
    redirect_to root_path
  end
  def show
    @form = Form4.find(params[:id])
  end
  def destroy
    @form = Form4.find(params[:id])
    @form.destroy
    redirect_to forms_show_path
  end
  private
  def post_params
    params.require(:form).permit(:from,:to,:amount,:number,:info,:r1,:r2,:r3,:mR,:jNum,:date)
  end
end
