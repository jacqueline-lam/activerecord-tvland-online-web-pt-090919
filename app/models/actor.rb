class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
  # List all characters that actor has alongside the show that the character is in
  # Array containing a string with both the character and the show
  def list_roles
    self.characters.collect {|character| "#{character.name} - #{character.show.name}" }
    #=> ["Khaleesi - Game of Thrones"]
  end
end