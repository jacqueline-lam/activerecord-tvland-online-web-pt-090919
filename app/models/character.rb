class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  
  def say_that_thing_you_say
    #=> 'Tyrion Lannister always says: A Lannister always pays his debts'
    "#{self.name} always says: #{self.catchphrase}"
  end
end