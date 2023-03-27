class ShortUrlsController < ApplicationController
  before_action :set_short_url, only: [:show]

  def index
    @frequently_used_urls = ShortUrl.order(:access_count).limit(100)
  end

  def create
    ShortUrl.create(long_url: params[:url])
    render json: { msg: 'Short URL created successfully', code: 200 }
  end

  def show
    @short_url.increment!(:access_count)
    redirect_to @short_url.long_url
  end

  private

  def set_short_url
    @short_url = ShortUrl.find_by(short_code: params[:id])
    unless @short_url
      render json: {
        msg: 'No url found under that short code',
        code: @short_url
      }
    end
  end
end
