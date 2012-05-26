require 'net/http'
Net::HTTP.version_1_2

class TestzController < ApplicationController
  def getzip
    Net::HTTP.start("dl.dropbox.com", 80){|http|
      buffer = http.get("/u/32350711/MMDTest.zip").body
      send_data(buffer , :type=>'application/zip', :filename => "MMDTest.zip", :disposition=>'attached')
    }
  end
end
