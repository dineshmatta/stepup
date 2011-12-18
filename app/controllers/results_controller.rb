class ResultsController < ApplicationController

	def index
	end

	def show 
		logger.info params["seat_no"].inspect
		
	end

	def result
	end

	def get_result
   @student = Student.find_seat_no(params["seat_no"]).first
	 @subjects = @student.subjects
	 logger.info "#{@subjects.inspect}KKKKKK"
	end
end
