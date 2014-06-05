require 'rails_helper'

RSpec.describe "podcasts/index", :type => :view do
  before(:each) do
    assign(:podcasts, [
      FactoryGirl.create(:valid_podcast),
      FactoryGirl.create(:valid_podcast)
    ])
  end

  it "renders a list of podcasts" do
    render
    sample_model = FactoryGirl.build(:valid_podcast)
    assert_select "tr>td", :text => sample_model.slug.to_s, :count => 2
    assert_select "tr>td", :text => sample_model.course_name.to_s, :count => 2
    assert_select "tr>td", :text => sample_model.podcast_name.to_s, :count => 2
    assert_select "tr>td", :text => sample_model.feed.to_s, :count => 2
  end
end
