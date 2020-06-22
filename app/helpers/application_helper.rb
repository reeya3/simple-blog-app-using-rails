# frozen_string_literal: true

module ApplicationHelper
  def gravatar_for(user, options = { size: 80})
    size = options[:size]
    gravatar_id = Digest::MD5::hexdigest(user.email.to_s.downcase)
    gravatar_url ="https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: 'img-circle')
  end
end
