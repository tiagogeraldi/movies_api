require 'spec_helper'

describe LikesController do
  describe "#create" do
    before do
      @movie = FactoryGirl.create(:movie)
      @user = FactoryGirl.create(:user)

      params = { like: { movie_id: @movie.id, user_id: @user.id},
      :format => :json }

      post :create, params
    end

    it { response.should be_success }

    it "should return the correct params" do
      body = JSON.parse(response.body)
      body["movie_id"].should == @movie.id
      body["user_id"].should == @user.id
    end
  end

  describe "#delete" do
    before do
      @like = FactoryGirl.create(:like)

      delete :destroy, id: @like.id, :format => :json
    end

    it { response.should be_success }
  end
end
