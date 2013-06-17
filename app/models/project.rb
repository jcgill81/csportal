class Project < ActiveRecord::Base
  attr_accessible :am, :client, :conf, :jira, :name, :pm, :qa, :team

 	before_save { |project| project.am = am.downcase 
    project.pm = pm.downcase,
    project.qa = qa.downcase,
    project.team = team.downcase,
    project.client = client.downcase,
    project.name = name.downcase }

    validates :client, presence: true
    validates :name, presence: true
    validates :team, presence: true
    validates :am, presence: true
    validates :pm, presence: true
    validates :qa, presence: true
    


end
