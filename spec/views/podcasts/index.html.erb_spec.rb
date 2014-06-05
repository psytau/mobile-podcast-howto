require 'rails_helper'

RSpec.describe "podcasts/index", :type => :view do
  before(:each) do
    assign(:podcasts, [
      Podcast.create!(
        :slug => "Slug",
        :course_name => "Course Name",
        :podcast_name => "Podcast Name",
        :feed => "Feed",
        :description => "MyText"
      ),
      Podcast.create!(
        :slug => "Slug",
        :course_name => "Course Name",
        :podcast_name => "Podcast Name",
        :feed => "Feed",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of podcasts" do
    render
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "Course Name".to_s, :count => 2
    assert_select "tr>td", :text => "Podcast Name".to_s, :count => 2
    assert_select "tr>td", :text => "Feed".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
