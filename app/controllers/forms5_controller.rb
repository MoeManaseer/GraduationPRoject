class Forms5Controller < ApplicationController
  def new
    @form = Form5.new
  end

  def create
    @form = Form5.new(post_params)
    @form.formType = "5"
    @form.save
    flash[:notice] = "تم البعث ب نجاح"
    redirect_to root_path
  end
  def show
    @form = Form5.find(params[:id])
  end
  def destroy
    @form = Form5.find(params[:id])
    @form.destroy
    redirect_to forms_show_path
  end
  private
  def post_params
    params.require(:form).permit(:number,:rNumber,:date,:address,:info,:mR,:eR,:aDate,:sDate,:fDate,:amount,:spent,:s1,:s2,:s3,:s4,:s5,:s6,
    :l1,:l2,:l3,:l4,:l5,:l6,:timeLeft,:infoOn,:infoNotStarted,:infoStopped,:mName,:mDep,:mSection)
  end

end
