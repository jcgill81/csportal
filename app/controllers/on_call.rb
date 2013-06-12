class oncall_dev
  attr_accessor :name, :email, :phone
  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
    @phone = attributes[:phone]
end
  def formatted_email
    "#{@name} <#{@email}>"
	end
end

class oncall_pm
  attr_accessor :name, :email, :phone
  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
    @phone = attributes[:phone]
end
  def formatted_email
    "#{@name} <#{@email}>"
	end
end

class oncall_mng
  attr_accessor :name, :email, :phone
  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
    @phone = attributes[:phone]
end
  def formatted_email
    "#{@name} <#{@email}>"
	end
end