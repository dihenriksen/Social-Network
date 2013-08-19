class Quote < Comment
	include MongoMapper::Document

	key :true_votes, Integer
	key :false_votes, Integer

	# scope :by_name, lambda { |name| where(name_first: name) }

end