class TimelineController < ApplicationController
  def index
    @timeline = Photo.order('created_at DESC')
    respond_to do |format|
      format.html # index.html.erb
      format.json { 
        render json: @timeline.map { |photo| { :description => photo.description, :url => photo.file.url(:default), :created_at => l(photo.created_at) } }
      }
    end
  end
end
