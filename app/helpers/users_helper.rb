module UsersHelper
#we can use options = {size: 80}

	def gravatar_for(user, size: 30)
		gravatar_id=Digest::MD5::hexdigest(user.email.downcase)
	# size=options[:size]
		gravatar_url="https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar" )
		
		
	end
end
