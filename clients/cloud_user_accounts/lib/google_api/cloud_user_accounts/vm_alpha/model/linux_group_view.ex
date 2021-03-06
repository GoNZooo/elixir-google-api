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

defmodule GoogleApi.CloudUserAccounts.Vm_alpha.Model.LinuxGroupView do
  @moduledoc """
  A detailed view of a Linux group.

  ## Attributes

  - gid (Integer): [Output Only] The Group ID. Defaults to: `null`.
  - groupName (String): [Output Only] Group name. Defaults to: `null`.
  - members (List[String]): [Output Only] List of user accounts that belong to the group. Defaults to: `null`.
  """

  defstruct [
    :"gid",
    :"groupName",
    :"members"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.CloudUserAccounts.Vm_alpha.Model.LinuxGroupView do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudUserAccounts.Vm_alpha.Model.LinuxGroupView do
  def encode(value, options) do
    GoogleApi.CloudUserAccounts.Vm_alpha.Deserializer.serialize_non_nil(value, options)
  end
end

