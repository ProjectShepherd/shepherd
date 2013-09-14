class MissingPerson < ActiveRecord::Base
  belongs_to :submitter
  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end
#  fuzzily_searchable :full_name
  has_many :photos
end
