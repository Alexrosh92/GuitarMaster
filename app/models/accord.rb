class Accord < ActiveRecord::Base
  attr_accessible :name, :picture_url, :video_url

  auto_html_for :video_url do
    html_escape
    image
    youtube(:width => 560, :height => 315, :autoplay => false)
    simple_format
  end

end
