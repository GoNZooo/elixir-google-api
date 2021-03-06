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

defmodule GoogleApi.ProximityBeacon.V1beta1.Model.Observation do
  @moduledoc """
  Represents one beacon observed once.

  ## Attributes

  - advertisedId (AdvertisedId): The ID advertised by the beacon the client has encountered.  If the submitted &#x60;advertised_id&#x60; type is Eddystone-EID, then the client must be authorized to resolve the given beacon. Otherwise no data will be returned for that beacon. Required. Defaults to: `null`.
  - telemetry (String): The array of telemetry bytes received from the beacon. The server is responsible for parsing it. This field may frequently be empty, as with a beacon that transmits telemetry only occasionally. Defaults to: `null`.
  - timestampMs (String): Time when the beacon was observed. Defaults to: `null`.
  """

  defstruct [
    :"advertisedId",
    :"telemetry",
    :"timestampMs"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ProximityBeacon.V1beta1.Model.Observation do
  import GoogleApi.ProximityBeacon.V1beta1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"advertisedId", :struct, GoogleApi.ProximityBeacon.V1beta1.Model.AdvertisedId, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ProximityBeacon.V1beta1.Model.Observation do
  def encode(value, options) do
    GoogleApi.ProximityBeacon.V1beta1.Deserializer.serialize_non_nil(value, options)
  end
end

