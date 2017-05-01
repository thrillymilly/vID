class Api::VideosController < ApplicationController
  def index
    if logged_in?
      render json: Video.find_by(params[:url])
    else
      render json: nil
    end

  end

  def show
    render json: Video.find(params[:id])
    # render json: {}
  end

  def create
    if Video.find_by(url: params[:url])
      render json: Video.find_by(url: params[:url])
    else
      video = Video.new
      video.url = params[:url]
      video.name = params[:name]

      if video.save

        render json: video
      else
        render json: { error: 'screwed' }
      end
    end
  end

end
