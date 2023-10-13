Rails.application.configure do
  config.lograge.enabled = if !Rails.env.development? || ENV.fetch("LOGRAGE_IN_DEVELOPMENT", false)
    true
  else
    false
  end
end
