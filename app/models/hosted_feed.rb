class HostedFeed < ActiveRecord::Base
  has_many :podcasts
  belongs_to :user
  mount_uploader :rss_feed_file, RssFeedFileUploader
end
