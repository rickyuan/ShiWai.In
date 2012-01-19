Rails.application.config.middleware.use OmniAuth::Builder do
  provider :identity, on_failed_registration: lambda { |env|    
      IdentitiesController.action(:new).call(env)
    }
  provider :weibo, '3218687873', '4698eb0c35bef2b81c90795802d4a98a'
end