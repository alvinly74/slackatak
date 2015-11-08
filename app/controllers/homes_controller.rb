require 'net/https'

class HomesController < ApplicationController

  def index
    puts "got 'em"
    render json: "yooo"
  end

  def create
    # puts "got 'em"
    # render json: "yooo"
    webhook = "https://hooks.slack.com/services/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"

    req = Net::HTTP::Post.new('webhook')
    req.set_form_data(payload={"location" => 'hrere', "time" => 'now'})
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    http.get('/')
  end

end
