class Movie < ActiveRecord::Base
  attr_accessible :title, :year, :movie_genres_attributes

  has_many :likes, :dependent => :destroy
  has_many :users, :through => :likes
  has_many :movie_genres, :dependent => :destroy

  accepts_nested_attributes_for :movie_genres, :allow_destroy => true

  validates :title, :year, :presence => true
end
