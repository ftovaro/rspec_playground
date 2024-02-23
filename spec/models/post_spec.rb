require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is valid with valid attributes' do
    post = Post.new(title: "Title", content: "Content")
    expect(post.title).to be_valid
  end

  it 'is invalid without title' do
    post = Post.new(content: "Content")
    expect(post).to be_invalid
  end

  it 'is invalid without content' do
    post = Post.new(title: "Title")
    expect(post).to be_invalid
  end
end
