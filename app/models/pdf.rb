class Pdf < ApplicationRecord
  mount_uploader :remote_url,UserUploader
end
