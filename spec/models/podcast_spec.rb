require 'rails_helper'

RSpec.describe Podcast, :type => :model do
  it 'should belong to a user' do
    @user = FactoryGirl.create(:user)
    podcast = Podcast.create! :podcast_name => 'Test Podcast' ,:user => @user
    expect(podcast.user_id).to be(@user.id)
  end
end
