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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.ClientUserInvitation do
  @moduledoc """
  An invitation for a new client user to get access to the Ad Exchange Buyer UI. All fields are required unless otherwise specified.

  ## Attributes

  - clientAccountId (String): Numerical account ID of the client buyer that the invited user is associated with. The value of this field is ignored in create operations. Defaults to: `null`.
  - email (String): The email address to which the invitation is sent. Email addresses should be unique among all client users under each sponsor buyer. Defaults to: `null`.
  - invitationId (String): The unique numerical ID of the invitation that is sent to the user. The value of this field is ignored in create operations. Defaults to: `null`.
  """

  defstruct [
    :"clientAccountId",
    :"email",
    :"invitationId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ClientUserInvitation do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ClientUserInvitation do
  def encode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Deserializer.serialize_non_nil(value, options)
  end
end
