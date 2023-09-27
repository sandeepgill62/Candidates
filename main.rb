# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

puts "--------------------------"
for candidate in @candidates do
  result = experienced?(candidate)
  pp result
end

puts "--------------------------"
find_candidate = find(5)
pp find_candidate

puts "--------------------------"
qualified_candidates(@candidates)

puts "--------------------------"
ordered_by_qualifications(@candidates)

# pp @candidates
