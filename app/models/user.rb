class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :likes, :dependent => :destroy
  has_many :movies, :through => :likes

  validates :email, :uniqueness => true
  validates :email, :name, :presence => true
end
