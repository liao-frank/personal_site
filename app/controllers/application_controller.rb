class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	private
	def clean_url(url)
		# remove connection type
		url.slice!(/^.+:\/\//)
		url
	end
	helper_method :clean_url

	def discover_image(url)
		if /$http/.match(url) or /$.+imgur/.match(url)
			return url
		else
			return ActionController::Base.helpers.asset_path(url)
		end
	end
	helper_method :discover_image
end
