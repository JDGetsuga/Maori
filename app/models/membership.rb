class Membership < ActiveRecord::Base
  belongs_to :client
  belongs_to :service
  belongs_to :price
  belongs_to :sale

  
end
