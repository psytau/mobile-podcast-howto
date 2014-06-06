class HostedFeedsController < ApplicationController
  before_action :set_hosted_feed, only: [:show, :edit, :update, :destroy]

  # GET /hosted_feeds
  # GET /hosted_feeds.json
  def index
    @hosted_feeds = HostedFeed.all
  end

  # GET /hosted_feeds/1
  # GET /hosted_feeds/1.json
  def show
  end

  # GET /hosted_feeds/new
  def new
    @hosted_feed = HostedFeed.new
  end

  # GET /hosted_feeds/1/edit
  def edit
  end

  # POST /hosted_feeds
  # POST /hosted_feeds.json
  def create
    @hosted_feed = HostedFeed.new(hosted_feed_params)

    respond_to do |format|
      if @hosted_feed.save
        format.html { redirect_to @hosted_feed, notice: 'Hosted feed was successfully created.' }
        format.json { render :show, status: :created, location: @hosted_feed }
      else
        format.html { render :new }
        format.json { render json: @hosted_feed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hosted_feeds/1
  # PATCH/PUT /hosted_feeds/1.json
  def update
    respond_to do |format|
      if @hosted_feed.update(hosted_feed_params)
        format.html { redirect_to @hosted_feed, notice: 'Hosted feed was successfully updated.' }
        format.json { render :show, status: :ok, location: @hosted_feed }
      else
        format.html { render :edit }
        format.json { render json: @hosted_feed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hosted_feeds/1
  # DELETE /hosted_feeds/1.json
  def destroy
    @hosted_feed.destroy
    respond_to do |format|
      format.html { redirect_to hosted_feeds_url, notice: 'Hosted feed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hosted_feed
      @hosted_feed = HostedFeed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hosted_feed_params
      params.require(:hosted_feed).permit(:title, :slug, :description)
    end
end
