if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_sprendr_session', domain: '127.0.0.1:3000'
  else
    Rails.application.config.session_store :cookie_store, key: '_spendr' 
  end
