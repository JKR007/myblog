class Article < ActiveRecord::Base

  validates :title, presence: true, length: {minimum: 3, maximum: 50} #NotNull - true, if the title is not defined, rails drops this table when you try to save it!
  validates :description, presence: true, length: {minimum: 10, maximum: 300} #Not Null - true

end
