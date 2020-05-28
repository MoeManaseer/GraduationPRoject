class Forms9Controller < ApplicationController
  def new
    @form = Form9.new
  end

  def create
    @form = Form9.new(post_params)
    @form.formType = "9"
    @form.save
    flash[:notice] = "تم البعث ب نجاح"
    redirect_to root_path
  end
  def download
    form = Form9.find(params[:id])
    active_storage_disk_service = ActiveStorage::Service::DiskService.new(root: Rails.root.to_s + '/storage/')
    active_storage_disk_service.send(:path_for, user.avatar.blob.key)
    send_data ActiveStorage::Blob.service.send(:path_for, form.files.key), filename: "formFiles",:x_sendfile => true
  end
  def show
    @form = Form9.find(params[:id])
  end
  def destroy
    @form = Form9.find(params[:id])
    @form.destroy
    redirect_to forms_show_path
  end
  private
  def post_params
  params.require(:form).permit(:amount,:number,:mawsoom,:bNum,:bDate,:bCompany,:bAmount,:bNum1,:bDate1,:bCompany1,:bAmount1,:bNum2,:bDate2,:bCompany2,:bAmount2,:bNum3,:bDate3,:bCompany3,:bAmount3,
    :bNum4,:bDate4,:bCompany4,:bAmount4,:mR,:jNum,:date, files: [])
  end
end
