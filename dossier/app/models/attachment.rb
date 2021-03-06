# == Schema Information
#
# Table name: attachments
#
#  id                     :integer          not null, primary key
#  file_name              :string
#  attachment_type        :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  user_id                :integer
#  file_name_file_name    :string
#  file_name_content_type :string
#  file_name_file_size    :integer
#  file_name_updated_at   :datetime
#

class Attachment < ApplicationRecord
  attr_accessor :file_name

  belongs_to :user, inverse_of: :attachments
  has_attached_file :file_name
  validates_attachment_content_type :file_name,
    content_type: { file_name_content_type: "application/pdf" }
end
