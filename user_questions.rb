module UserQuestions

  def ask_question(name)

    another_question=true

    while(another_question)
      puts '1.Whether that country will get a loan from the IMF (International Monetary Fund) or WB (World bank).
    2.Whether the country can have a seat in the UN (United Nations) Security Council.
    3.Whether the country can win the war or not 
    select any nuber from above' 

      question=gets.to_i

      case question
      when 1
        country.loan
      when 2
        country.un_membership
      when 3
        if country.war_win?
          puts "#{name} can win the war"
        else
          puts "#{name} can't win the war"
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