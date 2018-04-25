class Item < ApplicationRecord
  has_attached_file :photo
  validates_attachment :photo,
                       content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
