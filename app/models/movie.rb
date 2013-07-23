class Movie < ActiveRecord::Base
  attr_accessible :title, :year

  has_many :likes, :dependent => :destroy
  has_many :users, :through => :likes
  has_many :movie_genres, :dependent => :destroy

  validates :title, :year, :presence => true
end
