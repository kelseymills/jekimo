class ChangeNameToMuyiwaJob < ApplicationJob
  def perform(user)
    user.update(name: 'Muyiwa')
  end
end
