require 'test_helper'

class SiteContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @site_content = site_contents(:one)
  end

  test "should get index" do
    get site_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_site_content_url
    assert_response :success
  end

  test "should create site_content" do
    assert_difference('SiteContent.count') do
      post site_contents_url, params: { site_content: { heading1: @site_content.heading1, heading2: @site_content.heading2, location: @site_content.location, title: @site_content.title } }
    end

    assert_redirected_to site_content_url(SiteContent.last)
  end

  test "should show site_content" do
    get site_content_url(@site_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_site_content_url(@site_content)
    assert_response :success
  end

  test "should update site_content" do
    patch site_content_url(@site_content), params: { site_content: { heading1: @site_content.heading1, heading2: @site_content.heading2, location: @site_content.location, title: @site_content.title } }
    assert_redirected_to site_content_url(@site_content)
  end

  test "should destroy site_content" do
    assert_difference('SiteContent.count', -1) do
      delete site_content_url(@site_content)
    end

    assert_redirected_to site_contents_url
  end
end
