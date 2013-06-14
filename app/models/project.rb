class Project < ActiveRecord::Base
  attr_accessible :am, :name, :pm, :qa

  	validates :name, presence: true,
  			uniqueness { case_sensitive: false }

	validates: :am, presence: true
	validates: :pm, presence: true
	validates: :qa, presence: true

end
