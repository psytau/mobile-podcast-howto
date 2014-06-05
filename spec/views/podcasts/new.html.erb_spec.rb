require 'rails_helper'

RSpec.describe "podcasts/new", :type => :view do
  before(:each) do
    assign(:podcast, Podcast.new(
      :slug => "MyString",
      :course_name => "MyString",
      :podcast_name => "MyString",
      :feed => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new podcast form" do
    render

    assert_select "form[action=?][method=?]", podcasts_path, "post" do

      assert_select "input#podcast_slug[name=?]", "podcast[slug]"

      assert_select "input#podcast_course_name[name=?]", "podcast[course_name]"

      assert_select "input#podcast_podcast_name[name=?]", "podcast[podcast_name]"

      assert_select "input#podcast_feed[name=?]", "podcast[feed]"

      assert_select "textarea#podcast_description[name=?]", "podcast[description]"
    end
  end
end
