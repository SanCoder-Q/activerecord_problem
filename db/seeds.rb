# encoding: utf-8
require 'json'
Dir["./models/*.rb"].each {|file| require file }
User.delete_all
puts User.create({name: "Tom", age: 1}).to_json
puts Book.create({name: "Ruby", price: 1}).to_json