require 'spec_helper'

describe Devise::Models::PasswordBlacklistable do
  describe 'password validation' do
    it 'invalid if password is blacklisted' do
      user = User.new('12345678')
      expect(user).to_not be_valid
      expect(user.errors[:password]).to eq(['is not strong enough. Please enter a stronger password.'])
    end

    it 'valid if password is not blacklisted' do
      user = User.new('Jm1C4C3aaDzC')
      expect(user).to be_valid
      expect(user.errors[:password]).to be_empty
    end
  end

  describe '#blacklisted_password?' do
    it 'returns true if password is blacklisted' do
      user = User.new('pokemon')
      expect(user.blacklisted_password?).to be true
    end

    it 'returns false if password is not blacklisted' do
      user = User.new('AccurateUnicornCoalPaperclip')
      expect(user.blacklisted_password?).to be false
    end
  end
end
