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

defmodule GoogleApi.Genomics.V1.Model.SearchAnnotationSetsRequest do
  @moduledoc """
  

  ## Attributes

  - datasetIds (List[String]): Required. The dataset IDs to search within. Caller must have &#x60;READ&#x60; access to these datasets. Defaults to: `null`.
  - name (String): Only return annotations sets for which a substring of the name matches this string (case insensitive). Defaults to: `null`.
  - pageSize (Integer): The maximum number of results to return in a single page. If unspecified, defaults to 128. The maximum value is 1024. Defaults to: `null`.
  - pageToken (String): The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of &#x60;nextPageToken&#x60; from the previous response. Defaults to: `null`.
  - referenceSetId (String): If specified, only annotation sets associated with the given reference set are returned. Defaults to: `null`.
  - types (List[String]): If specified, only annotation sets that have any of these types are returned. Defaults to: `null`.
    - Enum - one of 
  """

  defstruct [
    :"datasetIds",
    :"name",
    :"pageSize",
    :"pageToken",
    :"referenceSetId",
    :"types"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.SearchAnnotationSetsRequest do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.SearchAnnotationSetsRequest do
  def encode(value, options) do
    GoogleApi.Genomics.V1.Deserializer.serialize_non_nil(value, options)
  end
end

