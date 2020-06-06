# Creates a user that is confirmed
def create_confirmed_user!(attributes = {})
  u = FactoryBot.build(:user, attributes)
  u.skip_confirmation!
  u.save
end
