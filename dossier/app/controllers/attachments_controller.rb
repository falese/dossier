class AttachmentsController < ApplicationController
  def index
    @attachments = Attachment.all
  end
  def show
    @attachement = get_attachment
  end
  def create
    @attachment = attachment.new(attachment_params)
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

  def get_attachment
    Attachment.find(params[:id])
  end
end
