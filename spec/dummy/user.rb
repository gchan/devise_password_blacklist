require 'devise_password_blacklist'
require 'active_model'

class User
  include ActiveModel::Validations
  include Devise::Models::PasswordBlacklistable

  attr_accessor :password

  def initialize(password)
    @password = password
  end

  def password_required?
    true
  end
end
