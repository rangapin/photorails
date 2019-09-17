class Post < ApplicationRecord
  validates_presence_of :title, :image, :description
  has_one_attached :featured_image
end

def featured_image_url
  if self.featured_image.attachment
  self.featured_image.attachment.service_url
  end
end
