class SearchController < ApplicationController
  respond_to :json, :html
  def search
    api = BreweryDB::Client.new do |config|
        config.api_key = "ddb1279946825bb7b4942179b9dd2977"
    end
    @results = api.search.beers(q: params[:term])
    render json: @results.entries
  end
end
