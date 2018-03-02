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

defmodule GoogleApi.Storage.V1.Model.ComposeRequestSourceObjects do
  @moduledoc """
  

  ## Attributes

  - generation (String.t): The generation of this object to use as the source. Defaults to: `null`.
  - name (String.t): The source object&#39;s name. The source object&#39;s bucket is implicitly the destination bucket. Defaults to: `null`.
  - objectPreconditions (ComposeRequestObjectPreconditions):  Defaults to: `null`.
  """

  defstruct [
    :"generation",
    :"name",
    :"objectPreconditions"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.ComposeRequestSourceObjects do
  import GoogleApi.Storage.V1.Deserializer
  def decode(value, options) do
    value
    
    
    |> deserialize(:"objectPreconditions", :struct, GoogleApi.Storage.V1.Model.ComposeRequestObjectPreconditions, options)
    
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.ComposeRequestSourceObjects do
  def encode(value, options) do
    GoogleApi.Storage.V1.Deserializer.serialize_non_nil(value, options)
  end
end

