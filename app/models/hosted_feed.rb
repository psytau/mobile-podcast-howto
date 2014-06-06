class HostedFeed < ActiveRecord::Base
  has_many :podcasts
end
