# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

#pp @candidates

candidate = {
  id: 7,
  years_of_experience: 2,
  github_points: 145,
  languages: ['JavaScript', 'Ruby', 'Go', 'Erlang'],
  date_applied: 16.days.ago.to_date,
  age: 17
}

# pp candidate

# # find(id)
# puts "Find:", find(11)

# # experienced?(candidate)
# puts "Experienced:", experienced?(candidate)

# # github_points?(candidate)
# puts "Github Points:", github_points?(candidate)

# # ruby_or_python_language?(candidate)
# puts "Ruby or Python:",  ruby_or_python_language?(candidate)

# # recent_application?(candidate)
# puts "Applied in the last 15 days:", recent_application?(candidate)

# # at_least_18?(candidate)
# puts "Are over the age of 17 (18#):", at_least_18?(candidate)

# qualified_candidates(candidates)
puts "\nQualified Candiates:",  qualified_candidates(@candidates)

# ordered_by_qualifications(candidates)
puts "\nCandidates sorted by Experience and Points:", ordered_by_qualifications(@candidates)