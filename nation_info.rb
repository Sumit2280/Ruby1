class NationInfo
  def initialize(name,population,gdp,states,army_strength,state_of_country)
    @name=name
    @population=population
    @gdp=gdp
    @states=states
    @army_strength=army_strength
    @state_of_country=state_of_country
  end
end

class Questions<NationInfo
  def loan
    if @gdp >= 500
      puts 'The loan is approved'
    else 
      puts "The loan can't be approved"
    end
  end

  def un_membership
    if @army_strength>=500000 and (@state_of_country=='developed' or @state_of_country=='developing')
      puts "#{@name} can be the member of the un_secutity council"
    else 
      puts"#{@name} can't be the member of the un_security council" 
    end
  end

  def war_win?
    if @army_strength>=800000 
      return true
    else
      return false
    end
  end
end
