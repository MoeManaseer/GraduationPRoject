class Forms3Controller < ApplicationController
  def new
    @form = Form3.new
  end

  def create
    @form = Form3.new(post_params)
    @form.formType = "3"
    @form.save
    flash[:notice] = "تم البعث ب نجاح"
    redirect_to root_path
  end
  def download
    form = Form3.find(params[:id])
    active_storage_disk_service = ActiveStorage::Service::DiskService.new(root: Rails.root.to_s + '/storage/')
    active_storage_disk_service.send(:path_for, user.avatar.blob.key)
    send_data ActiveStorage::Blob.service.send(:path_for, form.files.key), filename: "formFiles",:x_sendfile => true
  end
  def show
    @form = Form3.find(params[:id])
  end
  def destroy
    @form = Form3.find(params[:id])
    @form.destroy
    redirect_to forms_show_path
  end
  private
  def post_params
    params.require(:form).permit(:number, :info, :name, :degree, :time, :reward, :mainB, :jobN, :date, :file)
  end
end
