class RemoveResetPasswordSentAtFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :reset_password_sent_at, :string
  end
end
