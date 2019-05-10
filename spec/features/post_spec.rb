require 'rails_helper'

describe 'post_controller' do
  before do
    @author = Author.create(name: 'Cormac McCarthy')
    @post = Post.create(title: 'My Post', description: 'My post desc', author: @author)
  end

  it 'responds to json format request' do
    visit post_path(id: @post.id, format: :json)
    expect(page.status_code).to eq(200)
  end
end
