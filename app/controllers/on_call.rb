class OnCall_Dev
  attr_accessor :name, :email, :phone
  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
    @phone = attributes[:phone]
end
  def contact
"#{@name} <#{@email}> [#{@phone}]"
	end
end

class OnCall_Lead
  attr_accessor :name, :email, :phone
  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
    @phone = attributes[:phone]
end
  def contact
"#{@name} <#{@email}> [#{@phone}]"
	end
end

class OnCall_Pm
  attr_accessor :name, :email, :phone
  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
    @phone = attributes[:phone]
end
  def contact
"#{@name} <#{@email}> [#{@phone}]"
	end
end

class OnCall_Mng
  attr_accessor :name, :email, :phone
  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
    @phone = attributes[:phone]
end
  def contact
"#{@name} <#{@email}> [#{@phone}]"
	end
end