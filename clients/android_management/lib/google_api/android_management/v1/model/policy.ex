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

defmodule GoogleApi.AndroidManagement.V1.Model.Policy do
  @moduledoc """
  A policy, which governs behavior for a device.

  ## Attributes

  - addUserDisabled (Boolean): Whether adding new users and profiles is disabled. Defaults to: `null`.
  - adjustVolumeDisabled (Boolean): Whether adjusting the master volume is disabled. Defaults to: `null`.
  - applications (List[ApplicationPolicy]): Policy applied to apps. Defaults to: `null`.
  - blockApplicationsEnabled (Boolean): Whether applications other than the ones configured in applications are blocked from being installed. When set, applications that were installed under a previous policy but no longer appear in the policy are automatically uninstalled. Defaults to: `null`.
  - cameraDisabled (Boolean): Whether all cameras on the device are disabled. Defaults to: `null`.
  - complianceRules (List[ComplianceRule]): Rules declaring which mitigating actions to take when a device is not compliant with its policy. When the conditions for multiple rules are satisfied, all of the mitigating actions for the rules are taken. There is a maximum limit of 100 rules. Defaults to: `null`.
  - debuggingFeaturesAllowed (Boolean): Whether the user is allowed to enable debugging features. Defaults to: `null`.
  - defaultPermissionPolicy (String): The default permission policy for requests for runtime permissions. Defaults to: `null`.
    - Enum - one of [PERMISSION_POLICY_UNSPECIFIED, PROMPT, GRANT, DENY]
  - factoryResetDisabled (Boolean): Whether factory resetting from settings is disabled. Defaults to: `null`.
  - frpAdminEmails (List[String]): Email addresses of device administrators for factory reset protection. When the device is factory reset, it will require one of these admins to log in with the Google account email and password to unlock the device. If no admins are specified, the device will not provide factory reset protection. Defaults to: `null`.
  - funDisabled (Boolean): Whether the user is allowed to have fun. Controls whether the Easter egg game in Settings is disabled. Defaults to: `null`.
  - installUnknownSourcesAllowed (Boolean): Whether the user is allowed to enable the \&quot;Unknown Sources\&quot; setting, which allows installation of apps from unknown sources. Defaults to: `null`.
  - keyguardDisabled (Boolean): Whether the keyguard is disabled. Defaults to: `null`.
  - maximumTimeToLock (String): Maximum time in milliseconds for user activity until the device will lock. A value of 0 means there is no restriction. Defaults to: `null`.
  - modifyAccountsDisabled (Boolean): Whether adding or removing accounts is disabled. Defaults to: `null`.
  - name (String): The name of the policy in the form enterprises/{enterpriseId}/policies/{policyId} Defaults to: `null`.
  - networkEscapeHatchEnabled (Boolean): Flag to specify if network escape hatch is enabled. If this flag has been enabled then upon device boot if device has no network connection, then an activity will be shown that allows the user to temporarily connect to a network to fetch the latest policy. The launched activity will time out if no network has been connected for a given while and will return to the previous activity that was shown. Defaults to: `null`.
  - openNetworkConfiguration (Object): Network configuration for the device. See configure networks for more information. Defaults to: `null`.
  - passwordRequirements (PasswordRequirements): Password requirements. Defaults to: `null`.
  - persistentPreferredActivities (List[PersistentPreferredActivity]): Default intent handler activities. Defaults to: `null`.
  - removeUserDisabled (Boolean): Whether removing other users is disabled. Defaults to: `null`.
  - safeBootDisabled (Boolean): Whether rebooting the device into safe boot is disabled. Defaults to: `null`.
  - screenCaptureDisabled (Boolean): Whether screen capture is disabled. Defaults to: `null`.
  - statusBarDisabled (Boolean): Whether the status bar is disabled. This disables notifications, quick settings and other screen overlays that allow escape from full-screen mode. Defaults to: `null`.
  - statusReportingSettings (StatusReportingSettings): Status reporting settings Defaults to: `null`.
  - stayOnPluggedModes (List[String]): The battery plugged in modes for which the device stays on. When using this setting, it is recommended to clear maximum_time_to_lock so that the device doesn&#39;t lock itself while it stays on. Defaults to: `null`.
    - Enum - one of 
  - systemUpdate (SystemUpdate): The system update policy, which controls how OS updates are applied. If the update type is WINDOWED and the device has a device account, the update window will automatically apply to Play app updates as well. Defaults to: `null`.
  - unmuteMicrophoneDisabled (Boolean): Whether the microphone is muted and adjusting microphone volume is disabled. Defaults to: `null`.
  - version (String): The version of the policy. This is a read-only field. The version is incremented each time the policy is updated. Defaults to: `null`.
  """

  defstruct [
    :"addUserDisabled",
    :"adjustVolumeDisabled",
    :"applications",
    :"blockApplicationsEnabled",
    :"cameraDisabled",
    :"complianceRules",
    :"debuggingFeaturesAllowed",
    :"defaultPermissionPolicy",
    :"factoryResetDisabled",
    :"frpAdminEmails",
    :"funDisabled",
    :"installUnknownSourcesAllowed",
    :"keyguardDisabled",
    :"maximumTimeToLock",
    :"modifyAccountsDisabled",
    :"name",
    :"networkEscapeHatchEnabled",
    :"openNetworkConfiguration",
    :"passwordRequirements",
    :"persistentPreferredActivities",
    :"removeUserDisabled",
    :"safeBootDisabled",
    :"screenCaptureDisabled",
    :"statusBarDisabled",
    :"statusReportingSettings",
    :"stayOnPluggedModes",
    :"systemUpdate",
    :"unmuteMicrophoneDisabled",
    :"version"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.Policy do
  import GoogleApi.AndroidManagement.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"applications", :list, GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy, options)
    |> deserialize(:"complianceRules", :list, GoogleApi.AndroidManagement.V1.Model.ComplianceRule, options)
    |> deserialize(:"openNetworkConfiguration", :struct, GoogleApi.AndroidManagement.V1.Model.Object, options)
    |> deserialize(:"passwordRequirements", :struct, GoogleApi.AndroidManagement.V1.Model.PasswordRequirements, options)
    |> deserialize(:"persistentPreferredActivities", :list, GoogleApi.AndroidManagement.V1.Model.PersistentPreferredActivity, options)
    |> deserialize(:"statusReportingSettings", :struct, GoogleApi.AndroidManagement.V1.Model.StatusReportingSettings, options)
    |> deserialize(:"systemUpdate", :struct, GoogleApi.AndroidManagement.V1.Model.SystemUpdate, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.Policy do
  def encode(value, options) do
    GoogleApi.AndroidManagement.V1.Deserializer.serialize_non_nil(value, options)
  end
end

