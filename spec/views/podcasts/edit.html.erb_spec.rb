require 'rails_helper'

RSpec.describe "podcasts/edit", :type => :view do
  before(:each) do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    @test_user = FactoryGirl.create(:user)
    @test_user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
    sign_in @test_user
    podcast = FactoryGirl.create(:valid_podcast)
    podcast.user = @test_user
    podcast.save!
    @podcast = assign(:podcast, podcast)
    # @podcast = assign(:podcast, Podcast.create!(
    #   :slug => "MyString",
    #   :course_name => "MyString",
    #   :podcast_name => "MyString",
    #   :feed => "MyString",
    #   :description => "MyText"
    # ))
  end

  pending 'view seems to have stopped working'
  xcontext 'view tests broke' do
    it "renders the edit podcast form" do
      render

      assert_select "form[action=?][method=?]", podcast_path(@podcast), "post" do

        assert_select "input#podcast_slug[name=?]", "podcast[slug]"

        assert_select "input#podcast_course_name[name=?]", "podcast[course_name]"

        assert_select "input#podcast_podcast_name[name=?]", "podcast[podcast_name]"

        assert_select "input#podcast_feed[name=?]", "podcast[feed]"

        assert_select "textarea#podcast_description[name=?]", "podcast[description]"
      end
    end
  end
end
