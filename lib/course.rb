class Course

	attr_accessor :title, :schedule, :description

	@@all = []


	def initialize()
		self.class.all << self
	end

	def self.create_course_with_info(title, schedule, description)
		new_course = self.new
		new_course.title = title
		new_course.schedule = schedule
		new_course.description = description
		self.all << new_course
	end

	def self.all
		@@all
	end

	def self.reset_all
		@@all = []
	end

end

