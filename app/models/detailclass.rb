class Detailclass < ActiveRecord::Base
  belongs_to :client
  belongs_to :membership
  belongs_to :headerclass
end
