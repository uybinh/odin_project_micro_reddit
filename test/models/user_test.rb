require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new( name: "Uy Binh", email: "binhphan@gmail.com", password: "binhphan", password_confirmation: "binhphan" )
  end

  test "user should be valid" do
    assert @user.valid?
  end

  test "email should be present (nonblank)" do
    @user.email = "a"
    assert_not @user.valid?
  end

end
