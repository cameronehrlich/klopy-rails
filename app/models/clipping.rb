class Clipping < ActiveRecord::Base
	validates :content, :uniqueness => true
end
