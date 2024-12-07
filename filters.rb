require 'date'

def find(id)
  @candidates.each do |candidate|
    if candidate[:id] == id
      return candidate
    end
  end
  return nil
end

def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    return true
  end
  return false
end

def github_points?(candidate)
  if candidate[:github_points] >= 100
    return true
  end
  return false
end

def ruby_or_python_language?(candidate)
  if candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python")
    return true
  end
  return false
end

def recent_application?(candidate)
  if (Date.today - candidate[:date_applied]).to_i <= 15
    return true
  end
  return false
end

def at_least_18?(candidate)
  if candidate[:age] >= 18
    return true
  end
  return false
end

def qualified_candidates(candidates)
  qualified_candidates_list = []

  candidates.each do |candidate|
    if experienced?(candidate) &&
      github_points?(candidate) &&
      ruby_or_python_language?(candidate) &&
      recent_application?(candidate) &&
      at_least_18?(candidate)
      qualified_candidates_list.push(candidate)
    end
  end

  return qualified_candidates_list
end

def ordered_by_qualifications(candidates)
  return candidates.sort_by { |candidate|  [-candidate[:years_of_experience], -candidate[:github_points]]  }
end
