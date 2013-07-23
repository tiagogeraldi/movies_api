# encoding: utf-8
require 'model_helper'

describe MovieGenre do
  it { should belong_to :movie }

  it { should validate_presence_of :genre }
end
