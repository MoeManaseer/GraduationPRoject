class Forms2Controller < ApplicationController
  def new
    @form = Form2.new
  end

  def create
    @form = Form2.new(post_params)
    @form.formType = "2"
    @form.save
    flash[:notice] = "تم البعث ب نجاح"
    redirect_to root_path
  end
  def download
    form = Form2.find(params[:id])
    active_storage_disk_service = ActiveStorage::Service::DiskService.new(root: Rails.root.to_s + '/storage/')
    active_storage_disk_service.send(:path_for, user.avatar.blob.key)
    send_data ActiveStorage::Blob.service.send(:path_for, form.files.key), filename: "formFiles",:x_sendfile => true
  end
  def show
    @form = Form2.find(params[:id])
  end
  def destroy
    @form = Form2.find(params[:id])
    @form.destroy
    redirect_to forms_show_path
  end
  private
  def post_params
    params.require(:form).permit(:type1,:eFullname,:aFullname,:uni,:dep,:country,:email,:wPhone,:hPhone,:pPhone,:bDate,:bUni,:bGpa,:btime,:bsub,:mDate,
    :mUni,:mGpa,:mtime,:msub,:dDate,:dGpa,:dtime,:dsub,:rSolo,:rPlace,:rCharge,:rCover,:rRate,:rYear,:rSolo1,:rPlace1,:rCharge1,:rCover1,:rRate1,:rYear1,
    :rSolo2,:rPlace2,:rCharge2,:rCover2,:rRate2,:rYear2,:cSolo,:cRate,:cCharge,:cFrom,:cDate,:cNum,:cSolo1,:cRate1,:cCharge1,:cFrom1,:cDate1,:cNum1,:cSolo2,:cRate2,:cCharge2,:cFrom2,:cDate2,:cNum2)
  end
end
