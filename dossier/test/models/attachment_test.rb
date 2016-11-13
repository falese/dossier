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

require 'test_helper'

class AttachmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
