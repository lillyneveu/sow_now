require 'pry'
require 'open-uri'
require 'nokogiri'

class SowNow::Plants
  attr_accessor :name, :season, :url

  def self.month
    self.scrape_plants
    #I should return a bunch of plants by month
  end

  def self.scrape_plants
    plants = []

    doc = Nokogiri::HTML(open("http://www.ufseeds.com/What-To-Plant-Now.html"))
    binding.pry
    #go to http://www.ufseeds.com/What-To-Plant-Now.html
    #extract the properties
    #instantiate a list of plants

    #ultimately, want to end up with an array of plants
    plants
  end

end
