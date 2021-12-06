require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create(email: "test@example.com", password: "123456", fisrt_name:"test1", last_name: "testlast")
  end

  it "create valid user" do
    expect(@user).to be_valid
  end

  it "should have first name and last name" do
    @user.fisrt_name = nil
    @user.last_name = nil
    expect(@user).not_to be_valid
  end
end
