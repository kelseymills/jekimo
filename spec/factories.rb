FactoryBot.define do
  factory :user_setting do
    user { nil }
    locale { I18n.available_locales.sample }
  end

  factory :user do
    email { "#{name}.#{Faker::Name.last_name}#{rand(5000)}@evilcorp.org" }
    password { 'Foo-Bar123' }

    trait :speaks_english do
      after :create do |user|
        create :user_setting, user: user, locale: 'en'
      end
    end
  end
end
