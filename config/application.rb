require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module KoukanRyugaku
  class Application < Rails::Application
    config.time_zone = "Asia/Tokyo"
    config.active_record.default_timezone = :local
    config.active_record.time_zone_aware_attributes = false
    config.i18n.default_locale = :ja
    config.generators do |g|
      g.test_framework false
      g.helper false
      g.assets false
      # 認証トークンをremoteフォームに埋め込む(ブラウザ側でjsが無効になっていた場合の設定)
      config.action_view.embed_authenticity_token_in_remote_forms = true
    end
  end
end
