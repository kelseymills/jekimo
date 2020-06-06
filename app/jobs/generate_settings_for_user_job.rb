class GenerateSettingsForUserJob < ApplicationJob
  def perform(user)
    UserSetting.create!(user: user, locale: 'en')
  end
end
