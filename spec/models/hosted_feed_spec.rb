require 'rails_helper'

RSpec.describe HostedFeed, :type => :model do
  it 'should have a podcast relation' do
    podcast = FactoryGirl.create(:valid_podcast)
    feed = FactoryGirl.create(:hosted_feed)
    podcast.hosted_feed_id = feed.id
    podcast.save!
    retrived_podcast = Podcast.find(podcast.id)
    expect(retrived_podcast.hosted_feed_id).to be(feed.id)
    expect(retrived_podcast.hosted_feed.id).to be(feed.id)
  end
end
