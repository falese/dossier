# == Schema Information
#
# Table name: attachments
#
#  id         :integer          not null, primary key
#  file_name  :string
#  type       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AttachmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
