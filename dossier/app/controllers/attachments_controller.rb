require 'pry'
class AttachmentsController < ApplicationController


  def index
    @attachments = Attachment.all
  end
  def show
    @attachement = get_attachment
  end

  def new
    @user = User.find(params[:user_id])
    @attachment = @user.attachments.build
  end


  def create
    @user = User.find(params[:user_id])
    @attachment = Attachment.new(attachment_params)

    if @attachment.save
      redirect_to @attachment
     else
       render :action => 'new'
     end
  end

  def edit
    @attachment = get_attachment
  end
  def update
    @attachment = get_attachment
      if @attachment.update(attachment_params)
        redirect_to @attachment
      else
        render 'edit'
      end
  end
private

  def attachment_params
    params.require(:attachment).permit(:file_name, :attachment_type, :user_id)
  end

  def get_attachment
    Attachment.find(params[:id])
  end
end
