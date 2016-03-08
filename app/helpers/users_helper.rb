module UsersHelper
	def any_posts?(user)
		!user.posts.empty?
	end
end
