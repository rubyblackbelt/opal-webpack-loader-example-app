class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable unless RUBY_ENGINE == 'opal'

  def self.current
    Hyperloop::Application.acting_user_id ? find(Hyperloop::Application.acting_user_id) : User.new
  end

  class << self
    alias _new_without_sti_type_cast new
  end
end
