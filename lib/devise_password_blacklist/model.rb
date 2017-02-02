module Devise
  module Models
    module PasswordBlacklistable
      def self.included(base)
        base.extend ClassMethods

        base.class_eval do
          validate :not_blacklisted_password, if: :password_required?
        end
      end

      def blacklisted_password?
        self.class.password_blacklist_checker.blacklisted?(password)
      end

      private

      def not_blacklisted_password
        if blacklisted_password?
          errors.add :password, 'is not strong enough. Please enter a stronger password.'
        end
      end

      module ClassMethods
        Devise::Models.config(self, :password_blacklist_checker)
      end
    end
  end
end
