require 'devise'
require 'password_blacklist'

module Devise
  def self.password_blacklist_checker
    @@password_blacklist_checker ||= ::PasswordBlacklist::Checker.new
  end
end

Devise.add_module :password_blacklistable, model: 'devise_password_blacklist/model'
