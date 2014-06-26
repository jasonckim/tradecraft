module SkillsHelper
  def distance_to_zipcode zipcode
    response = Typhoeus.get("https://zipcodedistanceapi.redline13.com/rest/#{ENV['ZIPCODE_KEY']}/distance.json/#{@current_user.zipcode}/#{zipcode}/miles")
    zipcode = JSON.parse(response.body)
    "#{zipcode["distance"].round(2)} miles"
  end 
end
