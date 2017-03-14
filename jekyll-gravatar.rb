require 'digest/md5'

module Jekyll
	module Gravatar
		def gravatar(email)
			"#{protocol}://www.gravatar.com/avatar/#{hash(email)}"
		end

		def protocol
			Jekyll.configuration['url'].start_with?('https') ? "https" : "http"
		end

		def hash(email)
			Digest::MD5.hexdigest(email.downcase.gsub(/\s+/, ""))
		end
	end
end

Liquid::Template.register_filter(Jekyll::Gravatar)