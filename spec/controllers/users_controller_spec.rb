require 'spec_helper'

describe UsersController do
  before do
    @user = FactoryGirl.create(:user)
  end

  describe "#create" do
    before do
      params = { user: { name: "tal", email: "tiago@geraldi.info" }, :format => :json }

      post :create, params
    end

    it { response.should be_success }

    it "should return the correct params" do
      body = JSON.parse(response.body)
      body["name"].should == 'tal'
      body["email"].should == 'tiago@geraldi.info'
    end
  end

  describe "#update" do
    before do
      params = { user: { name: "geraldi" }, :id => @user.id, :format => :json }

      put :update, params
    end

    it { response.should be_success }
  end

  describe "#delete" do
    before do
      delete :destroy, id: @user.id, :format => :json
    end

    it { response.should be_success }
  end
end
