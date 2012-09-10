--[[
Copyright 2012 Rackspace

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS-IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
--]]
local Error = require('core').Error

--[[ UserResponseError --]]
local UserResponseError = Error:extend()
function UserResponseError:initialize(message)
  Error.initialize(self)
  self.message = message
end

--[[ AuthTimeoutError --]]
local AuthTimeoutError = Error:extend()
function AuthTimeoutError:initialize(message)
  Error.initialize(self)
  self.message = message
end

--[[ ResponseTimeoutError --]]
local ResponseTimeoutError = Error:extend()
function ResponseTimeoutError:initialize(message)
  Error.initialize(self)
  self.message = message
end

--[[ Exports ]]--

local exports = {}
exports.UserResponseError = UserResponseError
exports.AuthTimeoutError = AuthTimeoutError
exports.ResponseTimeoutError = ResponseTimeoutError
return exports
