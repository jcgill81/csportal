class Project < ActiveRecord::Base
  attr_accessible :am, :name, :pm, :qa, :team, :client, :conf, :jira

    before_save { |project| project.am = am.downcase,
    project.pm = pm.downcase,
    project.qa = qa.downcase,
    project.team = team.downcase,
    project.client = client.downcase,
    project.name = name.downcase }


  	validates :name, presence: true,
  			uniqueness { case_sensitive: false }

	validates: :am, presence: true
	validates: :pm, presence: true
	validates: :qa, presence: true
	validates: :team, presence: true
	validates: :client, presence: true

end
