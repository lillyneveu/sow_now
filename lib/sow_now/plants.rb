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

    doc.xpath("//div[@class='ct_internal']/span[1]/span[1]/a").text #returns January

    #  months.css("div.ct_internal span a").text #returns a list of months
    #  .each do |month|
      #  month.css("span").text

    #ultimately, want to end up with an array of plants
    plants
  end

end

# def create_project_hash
#   html = File.read('fixtures/kickstarter.html')
#
#   kickstarter = Nokogiri::HTML(html)
#
# projects = {}
#
#   kickstarter.css("li.project.grid_4").each do |project|
#     title = project.css("h2.bbcard_name strong a").text
#     projects[title.to_sym] = {
#       :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
#       :description => project.css("p.bbcard_blurb").text,
#       :location => project.css("ul.project-meta span.location-name").text,
#       :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
#     }
#   end
#
#   projects
# end
#
# def self.scrape_index_page(index_url)
#   profiles = Nokogiri::HTML(open("./fixtures/student-site/index.html"))
#
#   profiles_array = []
#
#   profiles.css("div.roster-cards-container").each do |profile|
#     profile.css("div.student-card").each do |i|
#
#     profiles_hash = {
#     :name => i.css("a div.card-text-container h4.student-name").text,
#     :location => i.css("a div.card-text-container p.student-location").text,
#     :profile_url => "./fixtures/student-site/" + i.css("a").attribute("href").text
#
#     }
#       profiles_array << profiles_hash
#        end
#      end
#     profiles_array
#   end
#
# def self.scrape_profile_page(profile_url)
# #  binding.pry
#     info = Nokogiri::HTML(open(profile_url))
#
#
#     details_hash = {}
#       info.css("div.social-icon-container a").each do |link|
#         url = link.attribute("href").text
#           if url.match("twitter")
#             details_hash[:twitter] = url
#           elsif url.match("linkedin")
#             details_hash[:linkedin] = url
#           elsif url.match("github")
#             details_hash[:github] = url
#           else
#             details_hash[:blog] = url
#           end
#         end
#
#         details_hash[:profile_quote] = info.css("div.vitals-text-container div.profile-quote").text
#         details_hash[:bio] = info.css("div.description-holder p").text
#
#         details_hash
# end
