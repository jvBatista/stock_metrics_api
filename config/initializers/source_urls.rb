# frozen_string_literal: true

Rails.application.config.fetch_urls = JSON.parse(ENV.fetch('FETCH_URLS', {}))

# api_config = ENV.fetch('BANRISUL_API_CFG', '{}')
# Rails.application.config.banrisul_api_cfg = JSON.parse(api_config, symbolize_names: true)
