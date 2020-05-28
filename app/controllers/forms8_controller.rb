class Forms8Controller < ApplicationController
  def new
    @form = Form8.new
  end

  def create
    @form = Form8.new(post_params)
    @form.formType = "8"
    @form.save
    flash[:notice] = "تم البعث ب نجاح"
    redirect_to root_path
  end
  def download
    form = Form8.find(params[:id])
    active_storage_disk_service = ActiveStorage::Service::DiskService.new(root: Rails.root.to_s + '/storage/')
    active_storage_disk_service.send(:path_for, user.avatar.blob.key)
    send_data ActiveStorage::Blob.service.send(:path_for, form.files.key), filename: "formFiles",:x_sendfile => true
  end
  def show
    @form = Form8.find(params[:id])
  end
  def destroy
    @form = Form8.find(params[:id])
    @form.destroy
    redirect_to forms_show_path
  end
  private
  def post_params
    params.require(:form).permit(:amount, :number, :from, :rNum, :mawsoom, :mR, :jNum, :date, files: [])
  end
end
