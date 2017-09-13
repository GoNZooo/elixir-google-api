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

defmodule GoogleApi.Storage.V1.Api.Buckets do
  @moduledoc """
  API calls for all endpoints tagged `Buckets`.
  """

  alias GoogleApi.Storage.V1.Connection
  import GoogleApi.Storage.V1.RequestBuilder


  @doc """
  Permanently deletes an empty bucket.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String): Name of a bucket.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :if_metageneration_match (String): If set, only deletes the bucket if its metageneration matches this value.
    - :if_metageneration_not_match (String): If set, only deletes the bucket if its metageneration does not match this value.
    - :user_project (String): The project to be billed for this request, for Requester Pays buckets.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec storage_buckets_delete(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def storage_buckets_delete(connection, bucket, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"ifMetagenerationMatch" => :query,
      :"ifMetagenerationNotMatch" => :query,
      :"userProject" => :query
    }
    %{}
    |> method(:delete)
    |> url("/storage/v1/b/#{bucket}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Returns metadata for the specified bucket.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String): Name of a bucket.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :if_metageneration_match (String): Makes the return of the bucket metadata conditional on whether the bucket&#39;s current metageneration matches the given value.
    - :if_metageneration_not_match (String): Makes the return of the bucket metadata conditional on whether the bucket&#39;s current metageneration does not match the given value.
    - :projection (String): Set of properties to return. Defaults to noAcl.
    - :user_project (String): The project to be billed for this request, for Requester Pays buckets.

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.Bucket{}} on success
  {:error, info} on failure
  """
  @spec storage_buckets_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Storage.V1.Model.Bucket.t} | {:error, Tesla.Env.t}
  def storage_buckets_get(connection, bucket, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"ifMetagenerationMatch" => :query,
      :"ifMetagenerationNotMatch" => :query,
      :"projection" => :query,
      :"userProject" => :query
    }
    %{}
    |> method(:get)
    |> url("/storage/v1/b/#{bucket}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Storage.V1.Model.Bucket{})
  end

  @doc """
  Returns an IAM policy for the specified bucket.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String): Name of a bucket.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :user_project (String): The project to be billed for this request, for Requester Pays buckets.

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.Policy{}} on success
  {:error, info} on failure
  """
  @spec storage_buckets_get_iam_policy(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Storage.V1.Model.Policy.t} | {:error, Tesla.Env.t}
  def storage_buckets_get_iam_policy(connection, bucket, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"userProject" => :query
    }
    %{}
    |> method(:get)
    |> url("/storage/v1/b/#{bucket}/iam")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Storage.V1.Model.Policy{})
  end

  @doc """
  Creates a new bucket.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - project (String): A valid API project identifier.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :predefined_acl (String): Apply a predefined set of access controls to this bucket.
    - :predefined_default_object_acl (String): Apply a predefined set of default object access controls to this bucket.
    - :projection (String): Set of properties to return. Defaults to noAcl, unless the bucket resource specifies acl or defaultObjectAcl properties, when it defaults to full.
    - :body (Bucket): 

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.Bucket{}} on success
  {:error, info} on failure
  """
  @spec storage_buckets_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Storage.V1.Model.Bucket.t} | {:error, Tesla.Env.t}
  def storage_buckets_insert(connection, project, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"predefinedAcl" => :query,
      :"predefinedDefaultObjectAcl" => :query,
      :"projection" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/storage/v1/b")
    |> add_param(:query, :"project", project)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Storage.V1.Model.Bucket{})
  end

  @doc """
  Retrieves a list of buckets for a given project.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - project (String): A valid API project identifier.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): Maximum number of buckets to return in a single response. The service will use this parameter or 1,000 items, whichever is smaller.
    - :page_token (String): A previously-returned page token representing part of the larger set of results to view.
    - :prefix (String): Filter results to buckets whose names begin with this prefix.
    - :projection (String): Set of properties to return. Defaults to noAcl.

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.Buckets{}} on success
  {:error, info} on failure
  """
  @spec storage_buckets_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Storage.V1.Model.Buckets.t} | {:error, Tesla.Env.t}
  def storage_buckets_list(connection, project, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query,
      :"prefix" => :query,
      :"projection" => :query
    }
    %{}
    |> method(:get)
    |> url("/storage/v1/b")
    |> add_param(:query, :"project", project)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Storage.V1.Model.Buckets{})
  end

  @doc """
  Updates a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String): Name of a bucket.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :if_metageneration_match (String): Makes the return of the bucket metadata conditional on whether the bucket&#39;s current metageneration matches the given value.
    - :if_metageneration_not_match (String): Makes the return of the bucket metadata conditional on whether the bucket&#39;s current metageneration does not match the given value.
    - :predefined_acl (String): Apply a predefined set of access controls to this bucket.
    - :predefined_default_object_acl (String): Apply a predefined set of default object access controls to this bucket.
    - :projection (String): Set of properties to return. Defaults to full.
    - :user_project (String): The project to be billed for this request, for Requester Pays buckets.
    - :body (Bucket): 

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.Bucket{}} on success
  {:error, info} on failure
  """
  @spec storage_buckets_patch(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Storage.V1.Model.Bucket.t} | {:error, Tesla.Env.t}
  def storage_buckets_patch(connection, bucket, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"ifMetagenerationMatch" => :query,
      :"ifMetagenerationNotMatch" => :query,
      :"predefinedAcl" => :query,
      :"predefinedDefaultObjectAcl" => :query,
      :"projection" => :query,
      :"userProject" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/storage/v1/b/#{bucket}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Storage.V1.Model.Bucket{})
  end

  @doc """
  Updates an IAM policy for the specified bucket.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String): Name of a bucket.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :user_project (String): The project to be billed for this request, for Requester Pays buckets.
    - :body (Policy): 

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.Policy{}} on success
  {:error, info} on failure
  """
  @spec storage_buckets_set_iam_policy(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Storage.V1.Model.Policy.t} | {:error, Tesla.Env.t}
  def storage_buckets_set_iam_policy(connection, bucket, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"userProject" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/storage/v1/b/#{bucket}/iam")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Storage.V1.Model.Policy{})
  end

  @doc """
  Tests a set of permissions on the given bucket to see which, if any, are held by the caller.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String): Name of a bucket.
  - permissions (List[String]): Permissions to test.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :user_project (String): The project to be billed for this request, for Requester Pays buckets.

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.TestIamPermissionsResponse{}} on success
  {:error, info} on failure
  """
  @spec storage_buckets_test_iam_permissions(Tesla.Env.client, String.t, list(String.t), keyword()) :: {:ok, GoogleApi.Storage.V1.Model.TestIamPermissionsResponse.t} | {:error, Tesla.Env.t}
  def storage_buckets_test_iam_permissions(connection, bucket, permissions, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"userProject" => :query
    }
    %{}
    |> method(:get)
    |> url("/storage/v1/b/#{bucket}/iam/testPermissions")
    |> add_param(:query, :"permissions", permissions)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Storage.V1.Model.TestIamPermissionsResponse{})
  end

  @doc """
  Updates a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String): Name of a bucket.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :if_metageneration_match (String): Makes the return of the bucket metadata conditional on whether the bucket&#39;s current metageneration matches the given value.
    - :if_metageneration_not_match (String): Makes the return of the bucket metadata conditional on whether the bucket&#39;s current metageneration does not match the given value.
    - :predefined_acl (String): Apply a predefined set of access controls to this bucket.
    - :predefined_default_object_acl (String): Apply a predefined set of default object access controls to this bucket.
    - :projection (String): Set of properties to return. Defaults to full.
    - :user_project (String): The project to be billed for this request, for Requester Pays buckets.
    - :body (Bucket): 

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.Bucket{}} on success
  {:error, info} on failure
  """
  @spec storage_buckets_update(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Storage.V1.Model.Bucket.t} | {:error, Tesla.Env.t}
  def storage_buckets_update(connection, bucket, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"ifMetagenerationMatch" => :query,
      :"ifMetagenerationNotMatch" => :query,
      :"predefinedAcl" => :query,
      :"predefinedDefaultObjectAcl" => :query,
      :"projection" => :query,
      :"userProject" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/storage/v1/b/#{bucket}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Storage.V1.Model.Bucket{})
  end
end