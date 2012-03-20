require 'pp'

class ElementsController < ApplicationController


def index
  
end

def view
  #pull name out of params
  @twitter_handle = params[:twitter_handle].capitalize
  #figure out element name
  @element_name = @twitter_handle[0..1].capitalize
  #connect to twitter
  client = TwitterOAuth::Client.new
  #pull out follower count
  @followers_count = client.show(@twitter_handle)["followers_count"]
  #pull out tweet count
  @statuses_count = client.show(@twitter_handle)["statuses_count"]
end

end
