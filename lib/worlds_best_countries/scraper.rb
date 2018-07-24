class WorldsBestCountries::Scraper

  def self.scrape_lonely
    doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/best-in-travel/countries"))
    puts "*******SCRAPPING********"

    if WorldsBestCountries::Country.all.count !=10
      10.times do |i|
        country = WorldsBestCountries::Country.new
        country.name = doc.search("article##{i+1}.marketing-article").css("h1").text.strip
        country.description = doc.search("article##{i+1}.marketing-article").css("p.marketing-article__content").text.strip
        country.url = doc.search("article##{i+1}.marketing-article").css("p.marketing-article__content").css("a").first.attr("href").strip
      end
    end
  end

end
