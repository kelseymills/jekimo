class User < ApplicationRecord
  has_one :user_setting, dependent: :destroy
  # Include opinionated devise modules.
  # Others available :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable

  def can_access_sidekiq_admin_ui?
    email == 'jane@doe.io'
  end

  def can_access_event_store_admin_ui?
    email == 'jane@doe.io'
  end

  def locale
    user_setting&.locale
  end
end
