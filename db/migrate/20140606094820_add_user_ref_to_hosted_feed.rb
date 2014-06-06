class AddUserRefToHostedFeed < ActiveRecord::Migration
  def change
    add_reference :hosted_feeds, :user, index: true
  end
end
