require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Uy Binh", email: "binhphan@gmail.com", password: "binhphan", password_confirmation: "binhphan")
    @post = @user.posts.build(title: "The great post", body: "Binh is here")
    @comment = @post.comments.build(content: "Helle from comment content")
  end

  test "comment should valid" do
    assert @comment.valid?
  end

end
