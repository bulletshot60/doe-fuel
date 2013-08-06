module StatlyHelper

	def stat(controller, action, message)
		stat_counter = Stat.where("date(created_at) = date(:today) and controller = :controller and action = :action and message = :message", {today: Date.today, controller: controller, action: action, message: message}).first

		if stat_counter.nil?
			stat_counter = Stat.new
			stat_counter.controller = controller
			stat_counter.action = action
			stat_counter.message = message
			stat_counter.count = 1
			stat_counter.save!
		else 
			stat_counter.count += 1
			stat_counter.save!
		end
	end

end
