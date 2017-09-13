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

defmodule GoogleApi.AppsActivity.V1.Model.Activity do
  @moduledoc """
  An Activity resource is a combined view of multiple events. An activity has a list of individual events and a combined view of the common fields among all events.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"combinedEvent",
    :"singleEvents"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AppsActivity.V1.Model.Activity do
  import GoogleApi.AppsActivity.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"combinedEvent", :struct, GoogleApi.AppsActivity.V1.Model.Event, options)
    |> deserialize(:"singleEvents", :list, GoogleApi.AppsActivity.V1.Model.Event, options)
  end
end
