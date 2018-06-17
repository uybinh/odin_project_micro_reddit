require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Uy Binh", email: "binhphan@gmail.com", password: "binhphan", password_confirmation: "binhphan")
    @post = Post.new(title: "The great post", body: "Binh is here")
    @post.user = @user
  end

  test "post should be valid" do
    assert @post.valid?
  end
end
