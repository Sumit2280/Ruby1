class Logic
  attr_accessor :name, :population, :gdp, :states, :army_strength, :state_of_country
  def data_input
    p'Enter the name of your Country'
    @name=gets.chomp
    p"Enter the population of #{@name} in billion"
    @population=gets.to_i
    p"Enter the gdp of #{@name} in billion"
    @gdp=gets.to_i
    p"Enter the no of states in #{@name}"
    @states=gets.to_i
    p"Enter the army strength of #{@name}"
    @army_strength=gets.to_i

    gdp_per_capita=@gdp/@population

    case gdp_per_capita
    when 0..10
    @state_of_country='under developed'
    when 11..100
    @state_of_country='developing'
    else
    @state_of_country='developed'
    end
  end
end