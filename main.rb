# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

# def experienced()
#   result_from_block = yield
#   return result_from_block
# end

for candidate in @candidates do
  result = experienced(candidate)
  pp result
end

# pp @candidates
