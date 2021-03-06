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

defmodule GoogleApi.AppEngine.V1.Model.StaticFilesHandler do
  @moduledoc """
  Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files. Static file handlers describe which files in the application directory are static files, and which URLs serve them.

  ## Attributes

  - applicationReadable (Boolean): Whether files should also be uploaded as code data. By default, files declared in static file handlers are uploaded as static data and are only served to end users; they cannot be read by the application. If enabled, uploads are charged against both your code and static data storage resource quotas. Defaults to: `null`.
  - expiration (String): Time a static file served by this handler should be cached by web proxies and browsers. Defaults to: `null`.
  - httpHeaders (Map[String, String]): HTTP headers to use for all responses from these URLs. Defaults to: `null`.
  - mimeType (String): MIME type used to serve all files served by this handler.Defaults to file-specific MIME types, which are derived from each file&#39;s filename extension. Defaults to: `null`.
  - path (String): Path to the static files matched by the URL pattern, from the application root directory. The path can refer to text matched in groupings in the URL pattern. Defaults to: `null`.
  - requireMatchingFile (Boolean): Whether this handler should match the request if the file referenced by the handler does not exist. Defaults to: `null`.
  - uploadPathRegex (String): Regular expression that matches the file paths for all files that should be referenced by this handler. Defaults to: `null`.
  """

  defstruct [
    :"applicationReadable",
    :"expiration",
    :"httpHeaders",
    :"mimeType",
    :"path",
    :"requireMatchingFile",
    :"uploadPathRegex"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.StaticFilesHandler do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.StaticFilesHandler do
  def encode(value, options) do
    GoogleApi.AppEngine.V1.Deserializer.serialize_non_nil(value, options)
  end
end

