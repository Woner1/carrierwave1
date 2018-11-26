require 'carrierwave/processing/mini_magick'
class UserUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
   

  include CarrierWave::MiniMagick 
  # process resize_to_limit: [200, 200]

  # storage :qiniu

  # self.qiniu_bucket                = "baoliang"
  # self.qiniu_bucket_domain         = "piizoalyr.bkt.clouddn.com"
  # self.qiniu_protocal              = 'http'
  # self.qiniu_delete_after_days     = 30
 
  # self.qiniu_can_overwrite = true

  storage :file

  
  def store_dir  #定义上传到哪个文件夹下
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


#   #图片的处理，有不同版本大小，网站可以在不同的地方调用不同的图片大小
#  version :normal do
#   process :resize_to_fill => [48, 48]
# end

# version :small do
#   process :resize_to_fill => [16, 16]
# end

# version :large do
#   process :resize_to_fill => [64, 64]
# end

# version :big do
#   process :resize_to_fill => [120, 120]
# end




end
