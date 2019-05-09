require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  before do
    Post.destroy_all
    @post_attributes = { title: 'Test', description: 'This is a great thing' }
  end

  describe 'POST create' do
    it 'creates a new product' do
      post :create, params: { post: @post_attributes }
      expect(Post.count).to eq 1
    end
  end
end
