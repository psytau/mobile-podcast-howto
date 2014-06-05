require 'rails_helper'

RSpec.describe "podcasts/show", :type => :view do
  before(:each) do
    @podcast = assign(:podcast, FactoryGirl.create(:valid_podcast))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Step 1/)
    expect(rendered).to match(/Step 2/)
    expect(rendered).to match(/Step 3/)
  end
end
