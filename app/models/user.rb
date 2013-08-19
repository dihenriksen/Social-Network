class User
  include MongoMapper::Document

  key :name_first, String
  key :name_last, String
  key :current_city, String
  key :email, String
  key :salt, String
  key :fish, String
  key :code, String
  key :expires_at, Time
  key :born_on, Date
  key :friends, Array
  key :family, Hash
  key :pictures, Array
  key :current_company, Hash
  key :companies, Array
  key :schools, Hash
  key :profile_picture, String # this will hold a link to a profile picture

  key :news_ids, Array
  many :news, in: :news_ids

  key :story_ids, Array
  many :stories, in: :story_ids

  key :quote_ids, Array
  many :quotes, in: :quote_ids

  key :personality_ids, Array
  many :personalities, in: :personality_ids

  key :romance_ids, Array
  many :romances, in: :romance_ids

  key :workplace_ids, Array
  many :workplaces, in: :workplace_ids

  key :coolness_ids, Array
  many :coolnesses, in: :coolness_ids

  def full_name
    self.name_first + " " + self.name_last
  end

  def current_work
    if !self.current_company.empty?
      self.current_company[:title] + " at " + self.current_company[:company_name]
    else
      "None"
    end
  end

  def education
    if !self.schools.empty?
      "Studied " + self.schools[:major] + " at " + self.schools[:school_name]
    else
      "No education on file. Art history major?"
    end
  end
end
