default_url_options = {
  protocol:    Settings.dig(:default_url_options, :protocol),
  host:        Settings.dig(:default_url_options, :host)
}

if Settings.dig(:default_url_options, :port)
  default_url_options[:port] = Settings.dig(:default_url_options, :port)
end

Rails.application.routes.default_url_options = default_url_options
