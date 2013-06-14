class Project < ActiveRecord::Base
  attr_accessible :am, :client, :conf, :jira, :name, :pm, :qa, :team
end
