# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Blogger.V3.Api.Pages do
  @moduledoc """
  API calls for all endpoints tagged `Pages`.
  """

  alias GoogleApi.Blogger.V3.Connection
  import GoogleApi.Blogger.V3.RequestBuilder


  @doc """
  Delete a page by ID.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): The ID of the Blog.
  - page_id (String): The ID of the Page.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec blogger_pages_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def blogger_pages_delete(connection, blog_id, page_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:delete)
    |> url("/blogs/#{blog_id}/pages/#{page_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets one blog page by ID.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): ID of the blog containing the page.
  - page_id (String): The ID of the page to get.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :view (String): 

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Page{}} on success
  {:error, info} on failure
  """
  @spec blogger_pages_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.Page.t} | {:error, Tesla.Env.t}
  def blogger_pages_get(connection, blog_id, page_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"view" => :query
    }
    %{}
    |> method(:get)
    |> url("/blogs/#{blog_id}/pages/#{page_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.Page{})
  end

  @doc """
  Add a page.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): ID of the blog to add the page to.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :is_draft (Boolean): Whether to create the page as a draft (default: false).
    - :body (Page): 

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Page{}} on success
  {:error, info} on failure
  """
  @spec blogger_pages_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.Page.t} | {:error, Tesla.Env.t}
  def blogger_pages_insert(connection, blog_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"isDraft" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/blogs/#{blog_id}/pages")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.Page{})
  end

  @doc """
  Retrieves the pages for a blog, optionally including non-LIVE statuses.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): ID of the blog to fetch Pages from.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :fetch_bodies (Boolean): Whether to retrieve the Page bodies.
    - :max_results (Integer): Maximum number of Pages to fetch.
    - :page_token (String): Continuation token if the request is paged.
    - :status (List[String]): 
    - :view (String): Access level with which to view the returned result. Note that some fields require elevated access.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.PageList{}} on success
  {:error, info} on failure
  """
  @spec blogger_pages_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.PageList.t} | {:error, Tesla.Env.t}
  def blogger_pages_list(connection, blog_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"fetchBodies" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query,
      :"status" => :query,
      :"view" => :query
    }
    %{}
    |> method(:get)
    |> url("/blogs/#{blog_id}/pages")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.PageList{})
  end

  @doc """
  Update a page. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): The ID of the Blog.
  - page_id (String): The ID of the Page.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :publish (Boolean): Whether a publish action should be performed when the page is updated (default: false).
    - :revert (Boolean): Whether a revert action should be performed when the page is updated (default: false).
    - :body (Page): 

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Page{}} on success
  {:error, info} on failure
  """
  @spec blogger_pages_patch(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.Page.t} | {:error, Tesla.Env.t}
  def blogger_pages_patch(connection, blog_id, page_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"publish" => :query,
      :"revert" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/blogs/#{blog_id}/pages/#{page_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.Page{})
  end

  @doc """
  Publishes a draft page.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): The ID of the blog.
  - page_id (String): The ID of the page.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Page{}} on success
  {:error, info} on failure
  """
  @spec blogger_pages_publish(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.Page.t} | {:error, Tesla.Env.t}
  def blogger_pages_publish(connection, blog_id, page_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/blogs/#{blog_id}/pages/#{page_id}/publish")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.Page{})
  end

  @doc """
  Revert a published or scheduled page to draft state.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): The ID of the blog.
  - page_id (String): The ID of the page.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Page{}} on success
  {:error, info} on failure
  """
  @spec blogger_pages_revert(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.Page.t} | {:error, Tesla.Env.t}
  def blogger_pages_revert(connection, blog_id, page_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/blogs/#{blog_id}/pages/#{page_id}/revert")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.Page{})
  end

  @doc """
  Update a page.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): The ID of the Blog.
  - page_id (String): The ID of the Page.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :publish (Boolean): Whether a publish action should be performed when the page is updated (default: false).
    - :revert (Boolean): Whether a revert action should be performed when the page is updated (default: false).
    - :body (Page): 

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Page{}} on success
  {:error, info} on failure
  """
  @spec blogger_pages_update(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.Page.t} | {:error, Tesla.Env.t}
  def blogger_pages_update(connection, blog_id, page_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"publish" => :query,
      :"revert" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/blogs/#{blog_id}/pages/#{page_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.Page{})
  end
end