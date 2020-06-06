class CreateUserSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :user_settings do |t|
      t.references :user, null: false, foreign_key: true
      t.text :locale, default: 'en', null: false

      t.timestamps
    end
  end
end
