class MissingPerson < ActiveRecord::Base
  belongs_to :submitter
  has_many :photos
end
