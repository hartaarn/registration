class Event < ActiveRecord::Base
	validates_presence_of :name, :location, :date
end
