class Pin < ActiveRecord::Base
  attr_accessible :description, :document
  has_attached_file :document,
    :path => ':rails_root/assets/documents/:id/:basename.:extension'
  attr_protected :document_file_name, :document_content_type, :document_file_size

  validates :description, presence: true
  validates :user_id, presence: true
  validates_attachment :document, presence: true,
  							   content_type: { content_type: ["application/pdf", "application/doc", "application/docx",  "application/msword", "application/vnd.openxmlformats-officedocument.wordprocessingml.document"] }, #["document/pdf", "document/doc", "document/docx"] }, #["application/pdf", "application/doc", "application/docx"] }, #['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
  							   size: { less_than: 2.megabytes }

  belongs_to :user
end
