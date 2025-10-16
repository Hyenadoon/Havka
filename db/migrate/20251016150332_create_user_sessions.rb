class CreateUserSessions < ActiveRecord::Migration[8.0]
  def change
    create_table :user_sessions do |t|
      t.references :user, null: false, foreign_key: true
      t.jsonb :state
      t.datetime :expires_at

      t.timestamps
    end
  end
end
