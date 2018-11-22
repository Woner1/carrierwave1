require 'carrierwave/processing/mini_magick'
class UserUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
   

  include CarrierWave::MiniMagick 

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



end
