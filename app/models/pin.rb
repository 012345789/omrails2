class Pin < ActiveRecord::Base
  attr_accessible :description
  has_attached_file :document

  validates :description, presence: true
  validates :user_id, presence: true
  validates_attachment :document, presence: true,
  							   content_type: { content_type: ["application/pdf", "application/doc", "application/docx"] }, #['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
  							   size: { less_than: 2.megabytes }

  belongs_to :user
end
