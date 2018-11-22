class Image < ApplicationRecord
  mount_uploader :image_url,UserUploader
  mount_uploader :product_image_url,UserUploader
  mount_uploader :pdf,UserUploader
end
