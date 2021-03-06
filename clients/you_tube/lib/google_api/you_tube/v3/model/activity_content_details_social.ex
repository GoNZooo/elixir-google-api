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

defmodule GoogleApi.YouTube.V3.Model.ActivityContentDetailsSocial do
  @moduledoc """
  Details about a social network post.

  ## Attributes

  - author (String.t): The author of the social network post. Defaults to: `null`.
  - imageUrl (String.t): An image of the post&#39;s author. Defaults to: `null`.
  - referenceUrl (String.t): The URL of the social network post. Defaults to: `null`.
  - resourceId (ResourceId): The resourceId object encapsulates information that identifies the resource associated with a social network post. Defaults to: `null`.
  - type (String.t): The name of the social network. Defaults to: `null`.
    - Enum - one of [facebook, googlePlus, twitter, unspecified]
  """

  defstruct [
    :author,
    :imageUrl,
    :referenceUrl,
    :resourceId,
    :type
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ActivityContentDetailsSocial do
  import GoogleApi.YouTube.V3.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:resourceId, :struct, GoogleApi.YouTube.V3.Model.ResourceId, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ActivityContentDetailsSocial do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end
