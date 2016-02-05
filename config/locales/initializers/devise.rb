Devise.setup do |config|
  config.warden do |manager|
    manager.failure_app = Devise::CustomFailure
  end
end
