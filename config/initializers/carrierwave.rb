::CarrierWave.configure do |config|
  config.storage              = :qiniu
  config.qiniu_access_key     = "lpvDZC7yXcSeG2OUuQQpBEdq71R2Bu2f0GyjYpvA"
  config.qiniu_secret_key     = '7EuKTPPIEa3R0Z-Z7ClDgna3zUYYEW3xUMUprKMP'
  config.qiniu_bucket         = "baoliang"
  config.qiniu_bucket_domain  = "piizoalyr.bkt.clouddn.com"
  config.qiniu_bucket_private = true #default is false
  config.qiniu_block_size     = 4*1024*1024
  config.qiniu_protocol       = "http"

end