require 'sinatra'
require 'json'

post '/summerwinb' do
  j = JSON.parse(request.body.string)
  j["events"].map{ |e|
    # check sec is "00" or not
    "00" == e["message"]["timestamp"][17, 2] ?
      "ほひぃ(´ω｀)" : ""
  }
end
