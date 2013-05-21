class Comment

  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :body, type: String

  
  belongs_to :story, :inverse_of => nil
  belongs_to :user
  
  #Validations
  validates :body, :user_id, :story_id,  :presence => true
  
  after_create :test
  
  
  def test
    Rails.logger.info "========= After create comment ==================="
  end
  
end
