ActiveAdmin.setup do |config|
 config.site_title = "RecoTrakr"
  config.site_title_link = "/"
  config.authentication_method = :authenticate_admin_user!
  config.current_user_method = :current_user
  config.logout_link_path = :destroy_user_session_path
  config.logout_link_method = :delete
  config.allow_comments = false
  config.batch_actions = true
  config.default_per_page = 20
 
end
