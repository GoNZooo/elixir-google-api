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

defmodule GoogleApi.CustomSearch.V1.Model.Search do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"context",
    :"items",
    :"kind",
    :"promotions",
    :"queries",
    :"searchInformation",
    :"spelling",
    :"url"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.CustomSearch.V1.Model.Search do
  import GoogleApi.CustomSearch.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"context", :struct, GoogleApi.CustomSearch.V1.Model.Context, options)
    |> deserialize(:"items", :list, GoogleApi.CustomSearch.V1.Model.Result, options)
    |> deserialize(:"promotions", :list, GoogleApi.CustomSearch.V1.Model.Promotion, options)
    |> deserialize(:"searchInformation", :struct, GoogleApi.CustomSearch.V1.Model.Search_searchInformation, options)
    |> deserialize(:"spelling", :struct, GoogleApi.CustomSearch.V1.Model.Search_spelling, options)
    |> deserialize(:"url", :struct, GoogleApi.CustomSearch.V1.Model.Search_url, options)
  end
end
