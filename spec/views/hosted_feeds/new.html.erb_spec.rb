require 'rails_helper'

RSpec.describe "hosted_feeds/new", :type => :view do
  before(:each) do
    assign(:hosted_feed, HostedFeed.new(
      :title => "MyString",
      :slug => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new hosted_feed form" do
    render

    assert_select "form[action=?][method=?]", hosted_feeds_path, "post" do

      assert_select "input#hosted_feed_title[name=?]", "hosted_feed[title]"

      assert_select "input#hosted_feed_slug[name=?]", "hosted_feed[slug]"

      assert_select "textarea#hosted_feed_description[name=?]", "hosted_feed[description]"
    end
  end
end
