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
		if params["seat_no"].present? && @student.present?		
			@subjects = @student.subjects
		else
			redirect_to result_results_path
		end
	end
end
