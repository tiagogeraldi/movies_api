require 'factory_girl'

FactoryGirl.define do
  factory :user do
    name { 'Tiago' }
    email { 'virgulla@gmail.com' }
  end

  factory :movie do
    title { 'X-men' }
    year { 2013 }
  end

  factory :like do |like|
    user
    movie
  end
end

