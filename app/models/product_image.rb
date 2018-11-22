class ProductImage < ApplicationRecord
  mount_uploader :image_url,UserUploader
  
end
