# add fuzzy search for first and last names
class Trigram < ActiveRecord::Base
    include Fuzzily::Model
end
