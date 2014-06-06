require 'rails_helper'

RSpec.describe "hosted_feeds/index", :type => :view do
  before(:each) do
    assign(:hosted_feeds, [
      HostedFeed.create!(
        :title => "Title",
        :slug => "Slug",
        :description => "MyText"
      ),
      HostedFeed.create!(
        :title => "Title",
        :slug => "Slug",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of hosted_feeds" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
