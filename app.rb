require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
  get '/' do
    @currentHolidays = HolidApi.get(country: 'us', year: Time.now.year, month: Time.now.month)
    @myHolidays = HolidApi.get(country: 'us', year: 1994, month: 4)
    erb :index
  end
end