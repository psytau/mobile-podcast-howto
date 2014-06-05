require 'rails_helper'

RSpec.describe "podcasts/show", :type => :view do
  before(:each) do
    @podcast = assign(:podcast, Podcast.create!(
      :slug => "Slug",
      :course_name => "Course Name",
      :podcast_name => "Podcast Name",
      :feed => "Feed",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Course Name/)
    expect(rendered).to match(/Podcast Name/)
    expect(rendered).to match(/Feed/)
    expect(rendered).to match(/MyText/)
  end
end
