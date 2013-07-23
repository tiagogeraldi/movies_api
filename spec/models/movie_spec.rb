# encoding: utf-8
require 'model_helper'

describe Movie do
  it { should have_many(:likes).dependent(:destroy) }
  it { should have_many(:users).through(:likes) }
  it { should have_many(:movie_genres).dependent(:destroy) }

  it { should validate_presence_of :title }
  it { should validate_presence_of :year }
end
