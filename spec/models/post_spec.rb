require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = Post.create(date: Date.today, rationale: "something")
  end

  it "creates valid post" do
    expect(@post).to be_valid
  end

  it "should have date and raionale" do
    @post.date = nil
    @post.rationale = nil
    expect(@post).not_to be_valid
  end
end
