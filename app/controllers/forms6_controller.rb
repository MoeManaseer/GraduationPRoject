class Forms6Controller < ApplicationController
  def new
    @form = Form6.new
  end

  def create
    @form = Form6.new(post_params)
    @form.formType = "6"
    @form.save
    flash[:notice] = "تم البعث ب نجاح"
    redirect_to root_path
  end
  def show
    @form = Form6.find(params[:id])
  end
  def destroy
    @form = Form6.find(params[:id])
    @form.destroy
    redirect_to forms_show_path
  end
  private
  def post_params
    params.require(:form).permit(:number,:info,:fNum,:fDate,:fCompany,:fAmount,:fNum1,:fDate1,:fCompany1,:fAmount1,:fNum2,:fDate2,:fCompany2,:fAmount2,:fNum3,:fDate3,:fCompany3,:fAmount3,
    :fNum4,:fDate4,:fCompany4,:fAmount4,:mR,:jNum,:date)
  end
end
