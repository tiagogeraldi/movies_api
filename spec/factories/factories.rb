require 'factory_girl'

FactoryGirl.define do
  factory :user do
    name 'Tiago'
    email { 'virgulla@gmail.com' }
  end
end
