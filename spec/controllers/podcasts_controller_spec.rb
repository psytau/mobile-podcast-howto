require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe PodcastsController, :type => :controller do

  before(:each) do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    @test_user = FactoryGirl.create(:user)
    @test_user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
    sign_in @test_user
  end

  # This should return the minimal set of attributes required to create a valid
  # Podcast. As you add validations to Podcast, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {:feed => "http://feeeeeeed.com/feed.rss"}
  }

  let(:invalid_attributes) {
    {:feed => "feeeeed.com/feed.rss"}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PodcastsController. Be sure to keep this updated too.
  # We don't need this because we are using devise
  # let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all podcasts as @podcasts for the current user" do
      podcast = Podcast.new valid_attributes
      podcast.user_id = @test_user.id
      podcast.save!
      get :index, {}
      expect(assigns(:podcasts)).to eq([podcast])
    end
    it "should only show your own podcasts" do
      id1 = @test_user.id
      podcast_attributes = valid_attributes.clone
      podcast_attributes['user_id'] = id1
      podcast = Podcast.create! podcast_attributes
      user2 = User.create! :email => 'test_podcast_show_your_own@example.com', :password => '12345678'
      test_user2 = FactoryGirl.create(:user2)
      test_user2.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      podcast_attributes2 = valid_attributes.clone
      podcast_attributes2['user_id'] = user2.id
      Podcast.create! podcast_attributes2
      get :index, {}
      assigns(:podcasts).should eq([podcast])
    end
  end

  describe "GET show" do
    it "assigns the requested podcast as @podcast" do
      podcast = Podcast.create! valid_attributes
      get :show, {:id => podcast.to_param}
      expect(assigns(:podcast)).to eq(podcast)
    end
  end

  describe "GET new" do
    it "assigns a new podcast as @podcast" do
      get :new, {}
      expect(assigns(:podcast)).to be_a_new(Podcast)
    end
  end

  describe "GET edit" do
    it "assigns the requested podcast as @podcast" do
      podcast = Podcast.create! valid_attributes
      get :edit, {:id => podcast.to_param}
      expect(assigns(:podcast)).to eq(podcast)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Podcast" do
        expect {
          post :create, {:podcast => valid_attributes}
        }.to change(Podcast, :count).by(1)
      end

      it "assigns a newly created podcast as @podcast" do
        post :create, {:podcast => valid_attributes}
        expect(assigns(:podcast)).to be_a(Podcast)
        expect(assigns(:podcast)).to be_persisted
      end

      it "assigns a current user to podcast" do
        post :create, {:podcast => valid_attributes}
        expect(assigns(:podcast).user_id).to be(@test_user.id)
        # expect(assigns(:podcast)).to be_a(Podcast)
        # expect(assigns(:podcast)).to be_persisted
      end

      it "redirects to the created podcast" do
        post :create, {:podcast => valid_attributes}
        expect(response).to redirect_to(Podcast.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved podcast as @podcast" do
        post :create, {:podcast => invalid_attributes}
        expect(assigns(:podcast)).to be_a_new(Podcast)
      end

      it "re-renders the 'new' template" do
        post :create, {:podcast => invalid_attributes}
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested podcast" do
        podcast = Podcast.create! valid_attributes
        put :update, {:id => podcast.to_param, :podcast => new_attributes}
        podcast.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested podcast as @podcast" do
        podcast = Podcast.create! valid_attributes
        put :update, {:id => podcast.to_param, :podcast => valid_attributes}
        expect(assigns(:podcast)).to eq(podcast)
      end

      it "redirects to the podcast" do
        podcast = Podcast.create! valid_attributes
        put :update, {:id => podcast.to_param, :podcast => valid_attributes}
        expect(response).to redirect_to(podcast)
      end
    end

    describe "with invalid params" do
      it "assigns the podcast as @podcast" do
        podcast = Podcast.create! valid_attributes
        put :update, {:id => podcast.to_param, :podcast => invalid_attributes}
        expect(assigns(:podcast)).to eq(podcast)
      end

      it "re-renders the 'edit' template" do
        podcast = Podcast.create! valid_attributes
        put :update, {:id => podcast.to_param, :podcast => invalid_attributes}
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested podcast" do
      podcast = Podcast.create! valid_attributes
      expect {
        delete :destroy, {:id => podcast.to_param}
      }.to change(Podcast, :count).by(-1)
    end

    it "redirects to the podcasts list" do
      podcast = Podcast.create! valid_attributes
      delete :destroy, {:id => podcast.to_param}
      expect(response).to redirect_to(podcasts_url)
    end
  end

end
