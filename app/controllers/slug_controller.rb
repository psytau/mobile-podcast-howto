class SlugController < ApplicationController
  def show
      @podcast = Podcast.find_by(slug: params['slug'])
      render "podcasts/show"
  end
end
