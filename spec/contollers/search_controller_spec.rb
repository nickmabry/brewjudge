require 'spec_helper'

describe SearchController do
  describe "POST search", :type => :controller do
    it "returns search JSON" do
      post :search, term: "Portland"
      response.body.should =~ /North American Origin Ales/
    end
  end
end
