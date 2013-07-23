# encoding: utf-8
require 'model_helper'

describe Like do
  it { should belong_to :movie }
  it { should belong_to :user }

  it { should validate_presence_of :movie }
  it { should validate_presence_of :user }

  describe "#uniqueness" do
    subject { FactoryGirl.create(:like) }
    it { should validate_uniqueness_of(:movie_id).scoped_to(:user_id) }
  end
end
