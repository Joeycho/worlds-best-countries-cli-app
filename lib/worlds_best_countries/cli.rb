class WorldsBestCountries::CLI

  def call

    WorldsBestCountries::Scraper.scrape_lonely
    list_countries
    ask_answer

  end

  def list_countries
    puts "Here is the country lists"

    @countries = WorldsBestCountries::Country.all

    @countries.each do |country|
      puts "#{country.name}"
    end

  end

  def ask_answer
    puts "Which country do you want to know? Choose between 1-10."

    number = gets.strip
    if 0< number.to_i && number.to_i <11
    puts "#{@countries[number.to_i-1].name}\n"
    puts "#{@countries[number.to_i-1].description}\n"
    puts "URL : #{@countries[number.to_i-1].url}"
  #  binding.pry

    exit_gem

    else
      puts "Wrong Number"
      ask_answer
    end

  end

  def exit_gem

    puts "Do you want to know another country? Choose \"Y\" or \"N\""
    answer = gets.strip
  #  binding.pry

    if answer == "Y" || answer == 'y'
      list_countries
      ask_answer
    elsif answer == "N" || answer == 'n'
      goodbye
    else
    puts "The answer was wrong. Try again"
      exit_gem
    end

  end

  def goodbye
    puts "Goodbye, see you later!!"
  end

end
