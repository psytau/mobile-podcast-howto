require 'rails_helper'

RSpec.describe "hosted_feeds/show", :type => :view do
  before(:each) do
    @hosted_feed = assign(:hosted_feed, HostedFeed.create!(
      :title => "Title",
      :slug => "Slug",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/MyText/)
  end
end
