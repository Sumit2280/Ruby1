require './logic'
require './nation_info.rb'

class UserQuestions < Questions

  def ask_question

    another_question=true

    while(another_question)
      puts '1.Whether that country will get a loan from the IMF (International Monetary Fund) or WB (World bank).
    2.Whether the country can have a seat in the UN (United Nations) Security Council.
    3.Whether the country can win the war or not 
    select any nuber from above' 

      question=gets.to_i

      case question
      when 1
        loan
      when 2
        un_membership
      when 3
        if war_win?
          puts "#{@name} can win the war"
        else
          puts "#{@name} can't win the war"
        end
      end

      puts "Do you want to ask another question? y/n"
      choice=gets.chomp
      
      if choice=='n'
        another_question=false
      end

    end
  end
end


nation = Logic.new
nation.data_input
q=UserQuestions.new(nation.name,nation.population,nation.gdp,nation.states,nation.army_strength,nation.state_of_country)
q.ask_question