require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require('pry')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:triangle)
end

post ('/triangle_answer') do
side_one = params[:side1].to_i # ruby always takes string as a default. 
side_two = params[:side2].to_i
side_three = params[:side3].to_i
@triangle = Triangle.new(side_one, side_two, side_three)

erb(:triangle_answer)
end
