require 'rails_helper'

RSpec.describe "hosted_feeds/edit", :type => :view do
  before(:each) do
    @hosted_feed = assign(:hosted_feed, HostedFeed.create!(
      :title => "MyString",
      :slug => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit hosted_feed form" do
    render

    assert_select "form[action=?][method=?]", hosted_feed_path(@hosted_feed), "post" do

      assert_select "input#hosted_feed_title[name=?]", "hosted_feed[title]"

      assert_select "input#hosted_feed_slug[name=?]", "hosted_feed[slug]"

      assert_select "textarea#hosted_feed_description[name=?]", "hosted_feed[description]"
    end
  end
end
