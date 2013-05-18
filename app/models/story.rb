class Story
  include MongoMapper::Document
  
  many :comments
  
  key :title, String
  key :url,   String
  key :slug,  String
  key :voters, Array
  key :relevance, Integer, :default => 0
  key :votes, Integer,     :default => 0
  key :description, :String
  
  # Cached Values

  key :comment_count, Integer, :default => 0
  key :username, String
  
  
  key :user_id, ObjectId
  timestamps!
  
  #Relationships
  
  belongs_to :user
  
  
  #Validations
  
  validates :title, :url, :presence => true
  
end
