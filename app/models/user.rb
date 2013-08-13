class User
  include MongoMapper::Document

  key :name_first, String
  key :name_last, String
  key :email, String
  key :salt, String
  key :fish, String
  key :code, String
  key :expires_at, Time
  key :born_on, Date
  key :friends, Array
  key :family, Hash
  key :pictures, Array

end
