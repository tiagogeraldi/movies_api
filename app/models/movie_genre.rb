class MovieGenre < ActiveRecord::Base
  attr_accessible :genre, :movie_id

  has_enumeration_for :genre

  belongs_to :movie

  validates :genre, :movie, :presence => true
end
