class PagesController < ApplicationController

  def home
    @slides = Slide.all
    @services = Service.all.limit(4)
  end

  def gallery
    @photos = Photo.all
  end

end