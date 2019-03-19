require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/Blueface'))

doc.css("div.mw-body-content p").each do |link|
    puts link.content
end
