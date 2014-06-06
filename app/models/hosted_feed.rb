class HostedFeed < ActiveRecord::Base
  has_many :podcasts
  belongs_to :user
end
