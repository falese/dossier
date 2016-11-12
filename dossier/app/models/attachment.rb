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

class Attachment < ApplicationRecord
end
