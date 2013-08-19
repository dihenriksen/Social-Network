class Quote < Comment
	include MongoMapper::Document

	key :true_votes, Integer
	key :false_votes, Integer

end