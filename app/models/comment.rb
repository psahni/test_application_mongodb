class Comment
  include MongoMapper::Document

  key :body, String
  
  belongs_to :story
  
end
