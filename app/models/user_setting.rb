class UserSetting < ApplicationRecord
  belongs_to :user

  validates :locale,
            inclusion: { in: I18n.available_locales.map(&:to_s).freeze,
                         message: '%{value} is not a valid locale' },
            presence: true
end
