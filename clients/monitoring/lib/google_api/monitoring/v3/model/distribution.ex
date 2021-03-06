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

defmodule GoogleApi.Monitoring.V3.Model.Distribution do
  @moduledoc """
  Distribution contains summary statistics for a population of values. It optionally contains a histogram representing the distribution of those values across a set of buckets.The summary statistics are the count, mean, sum of the squared deviation from the mean, the minimum, and the maximum of the set of population of values. The histogram is based on a sequence of buckets and gives a count of values that fall into each bucket. The boundaries of the buckets are given either explicitly or by formulas for buckets of fixed or exponentially increasing widths.Although it is not forbidden, it is generally a bad idea to include non-finite values (infinities or NaNs) in the population of values, as this will render the mean and sum_of_squared_deviation fields meaningless.

  ## Attributes

  - bucketCounts (List[String]): Required in the Stackdriver Monitoring API v3. The values for each bucket specified in bucket_options. The sum of the values in bucketCounts must equal the value in the count field of the Distribution object. The order of the bucket counts follows the numbering schemes described for the three bucket types. The underflow bucket has number 0; the finite buckets, if any, have numbers 1 through N-2; and the overflow bucket has number N-1. The size of bucket_counts must not be greater than N. If the size is less than N, then the remaining buckets are assigned values of zero. Defaults to: `null`.
  - bucketOptions (BucketOptions): Required in the Stackdriver Monitoring API v3. Defines the histogram bucket boundaries. Defaults to: `null`.
  - count (String): The number of values in the population. Must be non-negative. This value must equal the sum of the values in bucket_counts if a histogram is provided. Defaults to: `null`.
  - mean (Float): The arithmetic mean of the values in the population. If count is zero then this field must be zero. Defaults to: `null`.
  - range (Range): If specified, contains the range of the population values. The field must not be present if the count is zero. This field is presently ignored by the Stackdriver Monitoring API v3. Defaults to: `null`.
  - sumOfSquaredDeviation (Float): The sum of squared deviations from the mean of the values in the population. For values x_i this is: Sum[i&#x3D;1..n]((x_i - mean)^2) Knuth, \&quot;The Art of Computer Programming\&quot;, Vol. 2, page 323, 3rd edition describes Welford&#39;s method for accumulating this sum in one pass.If count is zero then this field must be zero. Defaults to: `null`.
  """

  defstruct [
    :"bucketCounts",
    :"bucketOptions",
    :"count",
    :"mean",
    :"range",
    :"sumOfSquaredDeviation"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.Distribution do
  import GoogleApi.Monitoring.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"bucketOptions", :struct, GoogleApi.Monitoring.V3.Model.BucketOptions, options)
    |> deserialize(:"range", :struct, GoogleApi.Monitoring.V3.Model.Range, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.Distribution do
  def encode(value, options) do
    GoogleApi.Monitoring.V3.Deserializer.serialize_non_nil(value, options)
  end
end

