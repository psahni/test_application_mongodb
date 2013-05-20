class Story
  
  include Mongoid::Document
  include Mongoid::Timestamps
  
  #Relationships
  
  belongs_to :user
  embeds_many :comments  
  

  
  field :title,  type: String
  field :url,    type: String
  field :slug,   type: String
  field :voters, type: Array
  field :relevance, type: Integer, :default => 0
  field :votes,     type: Integer,     :default => 0
  field :description, type: String
  
  # Cached Values

  field :comment_count, type: Integer, :default => 0
  field :username,      type: String
  
  
  field :user_id, type: Moped::BSON::ObjectId
  
  
  #Validations
  
  validates :title, :url, :presence => true
  
end
