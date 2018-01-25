require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "gets index" do
    get posts_url
    assert_response :success
  end

  test "gets new" do
    get new_post_url
    assert_response :success
  end

  test "creates post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { caption: @post.caption } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "shows post" do
    get post_url(@post)
    assert_response :success
  end

  test "gets edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "updates post" do
    patch post_url(@post), params: { post: { caption: @post.caption } }
    assert_redirected_to post_url(@post)
  end

  test "destroys post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
