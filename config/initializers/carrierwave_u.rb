
CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage = :qiniu  
    config.qiniu_access_key    = ENV["AK"]
    config.qiniu_secret_key    = ENV["SK"]
    config.qiniu_bucket        = "oceanfood"
    config.qiniu_bucket_domain = "oceanfood.qiniudn.com"
    config.qiniu_bucket_private= true #default is false
    config.qiniu_block_size    = 4*1024*1
    config.qiniu_protocol      = "http"
  else
    config.storage = :file
  end
end
