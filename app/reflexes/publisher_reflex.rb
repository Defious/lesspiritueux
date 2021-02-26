# frozen_string_literal: true

class PublisherReflex < ApplicationReflex

  def publish
    post = Post.find(element.dataset[:post_id])
    post.udpate(published: true, published_at: Time.now)
  end

  def unpublish
    post = Post.find(element.dataset[:post_id])
    post.udpate(published: false, published_at: nil)
  end

end
