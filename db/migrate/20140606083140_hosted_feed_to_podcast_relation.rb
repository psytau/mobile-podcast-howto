class HostedFeedToPodcastRelation < ActiveRecord::Migration
  def change
    add_column :podcasts, :hosted_feed_id, :integer
  end
end
