# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Photo.delete_all

u1 = User.create(:username => "chris", :password => "1", :password_confirmation => "1", :age => 30, :gender => "male", :city => "New York", :state => "NY", :ethnicity => "Mixed", :description => "Average")
u2 = User.create(:username => "sally", :password => "2", :password_confirmation => "2", :age => 35, :gender => "female", :city => "Boston", :state => "MA", :ethnicity => "Jewish", :description => "Above average")
u3 = User.create(:username => "joe", :password => "3", :password_confirmation => "3", :age => 25, :gender => "male", :city => "San Francisco", :state => "CA", :ethnicity => "Black", :description => "Way above average")

p1 = Photo.create(:is_primary => true, :caption => "hi", :remote_image_url => "http://a0.twimg.com/profile_images/83126918/Guy_Bio_Photo_crop.jpg")
p2 = Photo.create(:is_primary => true, :caption => "im a girl!", :remote_image_url => "http://a0.twimg.com/profile_images/2344348679/d7fhjj1t1mms16iq0m1p.jpeg")
p3 = Photo.create(:is_primary => true, :caption => "im a guy!", :remote_image_url => "http://a0.twimg.com/profile_images/2273386672/au5agsoqq2ilquh9mjku.jpeg")

p4 = Photo.create(:is_primary => false, :caption => "well hello there", :remote_image_url => "http://ia.media-imdb.com/images/M/MV5BMTcxMzI4Nzc1OV5BMl5BanBnXkFtZTYwNzMwNDMz._V1._SX332_SY400_.jpg")

u1.photos = [p1,p4]
u2.photos = [p2]
u3.photos = [p3]