class Forms1Controller < ApplicationController
  def new
    @form = Form1.new
  end

  def create
    @form = Form1.new(post_params)
    @form.formType = "1"
    @form.save
    flash[:notice] = "تم البعث ب نجاح"
    redirect_to root_path
  end
  def download
    form = Form1.find(params[:id])
    active_storage_disk_service = ActiveStorage::Service::DiskService.new(root: Rails.root.to_s + '/storage/')
    active_storage_disk_service.send(:path_for, user.avatar.blob.key)
    send_data ActiveStorage::Blob.service.send(:path_for, form.files.key), filename: "formFiles",:x_sendfile => true
  end
  def show
    @form = Form1.find(params[:id])
  end
  def destroy
    @form = Form1.find(params[:id])
    @form.destroy
    redirect_to forms_show_path
  end
  private
  def post_params
    params.require(:form).permit(:type1,:eFullname,:aFullname,:uni,:dep,:country,:email,:wPhone,:hPhone,:pPhone,:bDate,:bUni,:btime,:bsub,:mDate,
    :mUni,:mtime,:msub,:dDate,:dtime,:dsub,:aName,:aSub,:aFrom,:aTime,:aName1,:aSub1,:aFrom1,:aTime1,:pHeadline,:pRate,:pName,:pISSN,:pYear,
    :pHeadline1,:pRate1,:pName1,:pISSN1,:pYear1,:pHeadline2,:pRate2,:pName2,:pISSN2,:pYear2,:pHeadline3,:pRate3,:pName3,:pISSN3,:pYear3,
    :pHeadline4,:pRate4,:pName4,:pISSN4,:pYear4,:pHeadline5,:pRate5,:pName5,:pISSN5,:pYear5,:pHeadline6,:pRate6,:pName6,:pISSN6,:pYear6,
    :pHeadline7,:pRate7,:pName7,:pISSN7,:pYear7,:bHeadline,:bRate,:bNum,:bAuthor,:bYear,:bHeadline1,:bRate1,:bNum1,:bAuthor1,:bYear1,:bHeadline2,:bRate2,:bNum2,:bAuthor2,:bYear2,
    :bHeadline3,:bRate3,:bNum3,:bAuthor3,:bYear3,:bHeadline4,:bRate4,:bNum4,:bAuthor4,:bYear4,:cHeadline,:cSolo,:cRate,:cCharge,:cFrom,:cDate,:cNUm,:cHeadline1,:cSolo1,:cRate1,:cCharge1,:cFrom1,:cDate1,:cNUm1,
    :sName,:sType,:sTime,:sName1,:sType1,:sTime1,:sName2,:sType2,:sTime2,:supHeadline,:supYear,:supTime,:supType,:supAmount,:supFrom,:supHeadline1,:supYear1,:supTime1,:supType1,:supAmount1,:supFrom1,
    :supHeadline2,:supYear2,:supTime2,:supType2,:supAmount2,:supFrom2,:supHeadline3,:supYear3,:supTime3,:supType3,:supAmount3,:supFrom3,files: [])
  end
end
