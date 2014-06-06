require 'rails_helper'

RSpec.describe "HostedFeeds", :type => :request do
  describe "GET /hosted_feeds" do
    it "works! (now write some real specs)" do
      get hosted_feeds_path
      expect(response.status).to be(200)
    end
  end
end
