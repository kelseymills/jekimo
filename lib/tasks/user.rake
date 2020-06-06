namespace :user do
  desc "Generates settings for users that don't have any"
  task generate_settings_for_users: :environment do
    users_with_no_settings = User.where.not(id: UserSetting.pluck(:user_id))
    users_with_no_settings.each do |user|
      GenerateSettingsForUserJob.perform_later(user)
    end
  end

  desc 'Publishes the user signed up event with dummy data'
  task publish_user_signed_up_event: :environment do
    event_store = Rails.configuration.event_store
    event = UserSignedUpEvent.new(data: { user_id: 1, dummy: true })

    event_store.publish(event, stream_name: 'user')
  end
end
