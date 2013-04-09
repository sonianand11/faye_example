class FayePublishController < ApplicationController
  def index
  end
  def publish
    message = {:channel => "/channel1", :data => params[:message],:ext => {:auth_token => "fay_auth"}}   
    RestClient.post("http://localhost:9292/faye",:message=> message.to_json,:content_type => 'application/json')
    render :nothing => true
  end
end
