require 'spec_helper'
require 'capybara/rspec'

describe "Podcast Integration" do
  context "new" do
    before :each do
      @user = FactoryGirl.create(:user)
      login_as(@user, :scope => :user)      # @user.confirmed_at = Time.now
      # @user.save
    end

    it 'new podcast' do
      # visit '/users/sign_in'
      # puts 'visiting page!!!!!!!!!!!!'
      # puts page.body
      # fill_in 'user_email', :with => 'newuser@example.com'
      # fill_in 'user_password', :with => 'password123'
      # click_link 'Sign in'
      # expect(page).to have_content 'successfully'
      visit '/podcasts/new'
      expect(page).to have_content 'New podcast'
      fill_in 'podcast[podcast_name]', :with => 'Test Podcast'
      fill_in 'podcast[slug]', :with => 'test_podcast'
      fill_in 'podcast[feed]', :with => 'http://pod.com/podcast.rss'
      fill_in 'podcast[description]', :with => 'This is a test podcast'
      click_link_or_button 'Create Podcast'
      expect(page).to have_content 'Step 1 First download the App.'
    end
  end

end
