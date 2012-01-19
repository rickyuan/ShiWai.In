CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAJ3EQFXEWO4LMYYJQ',       # required
    :aws_secret_access_key  => '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',       # required
    :region                 => 'ap-southeast-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'shiwai'                     # required
  config.fog_host       = nil            # optional, defaults to nil
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end