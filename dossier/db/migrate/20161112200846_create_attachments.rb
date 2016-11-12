class CreateAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :attachments do |t|
      t.string :file_name
      t.text :type

      t.timestamps
    end
  end
end
