class DictionaryController < ApplicationController
	def create
		dic = Dictionary.new
		dic.ask = params[:ask]
		dic.answer = params[:answer]
		dic.save
		redirect_to '/chat'
	end
end
