class Shit < ActiveRecord::Base
	scope :featured, -> { where(featured: true) }
	scope :random, -> { order('author asc, random()') }
	scope :sorted, -> { order(:featured, :author)}

	def self.safe_random
		result = []
		pending = []
		rest = []

		random.each do |t|
			if result.length >=5
				rest.push(t)
			else
				if t.featured
					result.push(t)
				else
					pending.push(t)
				end
			end
		end
		result + pending + rest
	end
end
