# encoding: utf-8
require 'model_helper'

describe Like do
  it { should belong_to :movie }
  it { should belong_to :user }

  it { should validate_presence_of :movie }
  it { should validate_presence_of :user }
end
