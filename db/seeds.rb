# Seeds the database with a confirmed user with access to
# sidekiq and the events UI
def create_confirmed_user!
  properties = { email: 'light.yagami@death.note' }
  return if User.find_by(properties)

  # This user will inherit the default User factory password.
  user_to_create = FactoryBot.build :user, properties
  user_to_create.skip_confirmation!
  user_to_create.save!

  FactoryBot.create(:user_setting, user: user_to_create, locale: 'en')
end

create_confirmed_user!
