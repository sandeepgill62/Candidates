# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

require 'date'

def find(id)
  @candidates.each do |candidate|
    if candidate[:id] == id
      return candidate
    else
      return nil
    end
  end
end

def qualified_candidates(candidates)
  candidates.each do |candidate|
    if experienced?(candidate) && check_github_point?(candidate) && check_ruby_python?(candidate) && age_over_17?(candidate)
      pp candidate
    end
  end
end

def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    @experienced = true
  else
    @experienced = false
  end 
  return @experienced
end

# More methods will go below
def check_github_point?(candidate)
  if candidate[:github_points] >= 100
    @check = true
  else
    @check = false
  end
end

def check_ruby_python?(candidate)
  if candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')
    @check = true
  else
    @check = false
  end
end

def age_over_17?(candidate)
  if candidate[:age] > 17
    @check = true
  else
    @check = false
  end
end

def application_date?(candidate)
  if (candidate[:date_applied].to_i <= 15)
    @check = true
  else
    @check = false
  end
end
