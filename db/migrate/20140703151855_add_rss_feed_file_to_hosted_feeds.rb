class AddRssFeedFileToHostedFeeds < ActiveRecord::Migration
  def change
    add_column :hosted_feeds, :rss_feed_file, :string
  end
end
