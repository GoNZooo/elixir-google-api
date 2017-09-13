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

defmodule GoogleApi.Fitness.V1.Model.DataSource do
  @moduledoc """
  Definition of a unique source of sensor data. Data sources can expose raw data coming from hardware sensors on local or companion devices. They can also expose derived data, created by transforming or merging other data sources. Multiple data sources can exist for the same data type. Every data point inserted into or read from this service has an associated data source.  The data source contains enough information to uniquely identify its data, including the hardware device and the application that collected and/or transformed the data. It also holds useful metadata, such as the hardware and application versions, and the device type.  Each data source produces a unique stream of data, with a unique identifier. Not all changes to data source affect the stream identifier, so that data collected by updated versions of the same application/device can still be considered to belong to the same data stream.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"application",
    :"dataQualityStandard",
    :"dataStreamId",
    :"dataStreamName",
    :"dataType",
    :"device",
    :"name",
    :"type"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Fitness.V1.Model.DataSource do
  import GoogleApi.Fitness.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"application", :struct, GoogleApi.Fitness.V1.Model.Application, options)
    |> deserialize(:"dataType", :struct, GoogleApi.Fitness.V1.Model.DataType, options)
    |> deserialize(:"device", :struct, GoogleApi.Fitness.V1.Model.Device, options)
  end
end
