class AttachmentUpdate < ActiveRecord::Migration[5.0]
  def self.up
  add_attachment :attachments, :file_name
end

def self.down
  remove_attachment :attachments, :file_name
end

end
