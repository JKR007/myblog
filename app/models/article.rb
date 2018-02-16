class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: {minimum: 3, maximum: 50} #NotNull - true, if the title is not defined, rails drops this table when you try to save it!
  validates :description, presence: true, length: {minimum: 200, maximum: 10000} #Not Null - true
  validates :user_id, presence: true

end
