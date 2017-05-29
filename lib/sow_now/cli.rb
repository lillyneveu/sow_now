# Our CLI Controller - Welcomes the user and deals with input
class SowNow::CLI

  def call
    puts "Hello! Welcome to Sow Now!"
    get_plants_by_month
    details
  end

  @plants = SowNow::Plants.month
  @plants.each.with_index(1) do |plant, i|
    puts "#{i}. #{plant}"
  end

  def get_plants_by_month
    puts "Please type in a number from the following list of months to view recommendations:"
    puts "1 - January"
    puts "2 - February"
    puts "3 - March"
    puts "4 - April"
    puts "5 - May"
    puts "6 - June"
    puts "7 - July"
    puts "8 - August"
    puts "9 - September"
    puts "10 - October"
    puts "11 - November"
    puts "12 - December"
    input = nil
      while input != "exit"
        input = gets.strip.downcase
        if input.to_i > 0
          puts @plants[input.to_i-1]
        case input
        when "1"
          puts ""
        end
      end
    end
  end

  def details
    puts "Would you like more information? Please enter yes or no:"
    input = nil
    while input != "no"
      input = gets.strip.downcase
      case input
      when "yes"
        puts ""
      else
        puts "Sorry, I did not understand. Please enter yes or no:"
      end
    end
    puts "Please enter list to select another month or type exit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "list"
        plant_list
      when "exit"
        goodbye
      else
        puts "Sorry, I did not understand. Please enter list or exit:"
      end
    end
  end

  def goodbye
    puts "Happy planting!"
  end

end
