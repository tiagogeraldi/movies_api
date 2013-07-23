require 'spec_helper'

describe MoviesController do
  before do
    @movie = FactoryGirl.create(:movie)
  end

  describe "#create" do
    before do
      params = { movie: { title: "matrix", year: 1999,
        movie_genres_attributes: [{ genre: 'sifi' }]},
        :format => :json }

        post :create, params
      end

      it { response.should be_success }

      it "should return the correct params" do
        body = JSON.parse(response.body)
        body["title"].should == 'matrix'
        body["year"].should == 1999
        body["movie_genres"].first['genre'].should == 'sifi'
      end
    end

    describe "#update" do
      before do
        params = { movie: { year: 1990 }, :id => @movie.id, :format => :json }

        put :update, params
      end

      it { response.should be_success }
    end

    describe "#delete" do
      before do
        delete :destroy, id: @movie.id, :format => :json
      end

      it { response.should be_success }
    end
  end
