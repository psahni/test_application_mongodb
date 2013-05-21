class Comment

  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :body, type: String

  
  belongs_to :story, :inverse_of => nil
  belongs_to :user
  
  #Validations
  validates :body, :user_id, :story_id,  :presence => true
  
  
  
end
