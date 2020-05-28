class Forms7Controller < ApplicationController
  def new
    @form = Form7.new
  end

  def create
    @form = Form7.new(post_params)
    @form.formType = "7"
    @form.save
    flash[:notice] = "تم البعث ب نجاح"
    redirect_to root_path
  end
  def show
    @form = Form7.find(params[:id])
  end
  def destroy
    @form = Form7.find(params[:id])
    @form.destroy
    redirect_to forms_show_path
  end
  private
  def post_params
    params.require(:form).permit(:amount,:name,:jNum,:from,:to,:rName,:fWrok,:Date,:notes)
  end 
end
