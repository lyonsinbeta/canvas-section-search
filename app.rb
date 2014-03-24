require 'sinatra/base'
require 'rest_client'
require 'json'

class SectionSearch < Sinatra::Base

  get "/" do
    "Hello World"
  end

  get "/:sis_section_id" do
    RestClient.get( "#{ENV["CANVAS"]}/api/v1/sections/sis_section_id:#{params[:sis_section_id]}", Authorization: "Bearer #{ENV["API_KEY"]}") do |response, request, result, &block|
      case response.code
      when 404
        "Nope"
      else
        course = JSON.parse(response)
        redirect "#{ENV["CANVAS"]}/courses/#{course["course_id"]}"
      end
    end
  end
end
