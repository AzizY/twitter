class AddUsernameToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :username, :string
  end
end
