class ChatController < ApplicationController
	def index
	end
	def teach
		@ask = params[:ask]
	end
	def create
		# Find a possible answer that the bot learnt.
		dic = Dictionary.where(ask: params[:content]).sample
		if dic.nil?
			redirect_to "/chat/teach?ask=#{params[:content]}"
		else
			# Create a log for the user's chat.
			chat = Chat.new
			chat.is_man = true
			chat.content = params[:content]
			chat.save
			answer = Chat.new
			answer.is_man = false
			answer.content = dic.answer
			answer.save
			redirect_to '/chat'
		end
	end
end
