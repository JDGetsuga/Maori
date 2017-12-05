class Headerclass < ActiveRecord::Base
  belongs_to :service
  belongs_to :schedule
  has_many :detailclasses, dependent: :destroy
end
