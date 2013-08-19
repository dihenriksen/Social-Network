class Comment
	include MongoMapper::Document

	key :content, String
	key :user_subject, ObjectId
	key :user_author, ObjectId
	key :written_on, Time

end