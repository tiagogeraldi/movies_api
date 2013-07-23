# encoding: utf-8
require 'model_helper'

describe User do
  it { should have_many(:likes).dependent(:destroy) }
  it { should have_many(:movies).through(:likes) }

  it { should validate_presence_of :email }
  it { should validate_presence_of :name }

  describe "#uniqueness" do
    subject { FactoryGirl.create(:user) }
    it { should validate_uniqueness_of(:email) }
  end
end
