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

defmodule GoogleApi.AdExchangeBuyer.V14.Api.PretargetingConfig do
  @moduledoc """
  API calls for all endpoints tagged `PretargetingConfig`.
  """

  alias GoogleApi.AdExchangeBuyer.V14.Connection
  import GoogleApi.AdExchangeBuyer.V14.RequestBuilder


  @doc """
  Deletes an existing pretargeting config.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - account_id (String): The account id to delete the pretargeting config for.
  - config_id (String): The specific id of the configuration to delete.
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
  @spec adexchangebuyer_pretargeting_config_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def adexchangebuyer_pretargeting_config_delete(connection, account_id, config_id, opts \\ []) do
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
    |> url("/pretargetingconfigs/#{account_id}/#{config_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets a specific pretargeting configuration

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - account_id (String): The account id to get the pretargeting config for.
  - config_id (String): The specific id of the configuration to retrieve.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_pretargeting_config_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig.t} | {:error, Tesla.Env.t}
  def adexchangebuyer_pretargeting_config_get(connection, account_id, config_id, opts \\ []) do
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
    |> method(:get)
    |> url("/pretargetingconfigs/#{account_id}/#{config_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{})
  end

  @doc """
  Inserts a new pretargeting configuration.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - account_id (String): The account id to insert the pretargeting config for.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (PretargetingConfig): 

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_pretargeting_config_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig.t} | {:error, Tesla.Env.t}
  def adexchangebuyer_pretargeting_config_insert(connection, account_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/pretargetingconfigs/#{account_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{})
  end

  @doc """
  Retrieves a list of the authenticated user&#39;s pretargeting configurations.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - account_id (String): The account id to get the pretargeting configs for.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigList{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_pretargeting_config_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigList.t} | {:error, Tesla.Env.t}
  def adexchangebuyer_pretargeting_config_list(connection, account_id, opts \\ []) do
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
    |> method(:get)
    |> url("/pretargetingconfigs/#{account_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigList{})
  end

  @doc """
  Updates an existing pretargeting config. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - account_id (String): The account id to update the pretargeting config for.
  - config_id (String): The specific id of the configuration to update.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (PretargetingConfig): 

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_pretargeting_config_patch(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig.t} | {:error, Tesla.Env.t}
  def adexchangebuyer_pretargeting_config_patch(connection, account_id, config_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/pretargetingconfigs/#{account_id}/#{config_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{})
  end

  @doc """
  Updates an existing pretargeting config.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - account_id (String): The account id to update the pretargeting config for.
  - config_id (String): The specific id of the configuration to update.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (PretargetingConfig): 

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_pretargeting_config_update(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig.t} | {:error, Tesla.Env.t}
  def adexchangebuyer_pretargeting_config_update(connection, account_id, config_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/pretargetingconfigs/#{account_id}/#{config_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{})
  end
end