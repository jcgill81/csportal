class OnCall < ActiveRecord::Base
  attr_accessible :count, :email, :name, :phone
  validates :name, :email, :phone, :presence => true
  validates :name, :email, :phone, :uniqueness => true
  	:message => "Person Exists" }
end
