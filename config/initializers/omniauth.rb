# Change this omniauth configuration to point to your registered provider
# Since this is a registered application, add the app id and secret here
APP_ID = 'DeviseClientNLX220Dy5g'
APP_SECRET = 'DeviseClientp5MmgT8KErr9D015ScmaY8r3vHg5C0'

CUSTOM_PROVIDER_URL = 'http://localhost:3000'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :concord_id, APP_ID, APP_SECRET
end
