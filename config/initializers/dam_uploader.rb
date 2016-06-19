DamUploader.setup do |config|
  config.logo_icon = 'logo.png'
  config.download_instructions_fields = [:caption,
                                         :owner_name,
                                         :restrictions]
  config.email_from = 'info@dam-test-change-me.co.nz'
  config.override_dam_user = false
  config.user_table = 'dam_users'
  config.devise_setup = [:database_authenticatable,
                         :recoverable,
                         :rememberable,
                         :trackable,
                         :validatable]
end
