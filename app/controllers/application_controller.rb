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
			begin
				return ActionController::Base.helpers.asset_path(url)
			rescue
				return
			end
		end
	end
	helper_method :discover_image

	def discover_slide(url)
	  if /slides\/.+\.pdf\.png/.match(url)
	    url = url.gsub('slides/', 'pdfs/').gsub!('.png', '')
	  end
	  discover_image(url)
	end
	helper_method :discover_slide

	def is_url(string)
		/$http/.match(url)
	end
	helper_method :is_url
end
