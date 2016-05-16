class PagesController < ApplicationController
  def index
    require 'imgur'
    client = Imgur::Client.new(ENV['IMGUR_CLIENT'])
    image = Imgur::LocalImage.new(Rails.root.join("public", "sing-street.jpg").to_s, title: 'Awesome photo')
    uploaded = client.upload(image)
    @url = uploaded.link
  end
end
