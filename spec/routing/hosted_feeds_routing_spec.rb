require "rails_helper"

RSpec.describe HostedFeedsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/hosted_feeds").to route_to("hosted_feeds#index")
    end

    it "routes to #new" do
      expect(:get => "/hosted_feeds/new").to route_to("hosted_feeds#new")
    end

    it "routes to #show" do
      expect(:get => "/hosted_feeds/1").to route_to("hosted_feeds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hosted_feeds/1/edit").to route_to("hosted_feeds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/hosted_feeds").to route_to("hosted_feeds#create")
    end

    it "routes to #update" do
      expect(:put => "/hosted_feeds/1").to route_to("hosted_feeds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hosted_feeds/1").to route_to("hosted_feeds#destroy", :id => "1")
    end

  end
end
