-------------------------------------------------------------------------------
-- Spine Runtimes Software License
-- Version 2.3
-- 
-- Copyright (c) 2013-2015, Esoteric Software
-- All rights reserved.
-- 
-- You are granted a perpetual, non-exclusive, non-sublicensable and
-- non-transferable license to use, install, execute and perform the Spine
-- Runtimes Software (the "Software") and derivative works solely for personal
-- or internal use. Without the written permission of Esoteric Software (see
-- Section 2 of the Spine Software License Agreement), you may not (a) modify,
-- translate, adapt or otherwise create derivative works, improvements of the
-- Software or develop new applications using the Software or (b) remove,
-- delete, alter or obscure any trademarks or any copyright, trademark, patent
-- or other intellectual property or proprietary rights notices on or in the
-- Software, including any copy thereof. Redistributions in binary or source
-- form must include this license and terms.
-- 
-- THIS SOFTWARE IS PROVIDED BY ESOTERIC SOFTWARE "AS IS" AND ANY EXPRESS OR
-- IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
-- MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
-- EVENT SHALL ESOTERIC SOFTWARE BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
-- PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
-- OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
-- WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
-- OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
-- ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
-------------------------------------------------------------------------------

local AttachmentType = require "spine-lua.attachments.AttachmentType"
local RegionAttachment = require "spine-lua.attachments.RegionAttachment"
local BoundingBoxAttachment = require "spine-lua.attachments.BoundingBoxAttachment"
local MeshAttachment = require "spine-lua.attachments.MeshAttachment"
local PathAttachment = require "spine-lua.attachments.PathAttachment"

local AttachmentLoader = {}
function AttachmentLoader.new ()
	local self = {}

	function self:newRegionAttachment (skin, name, path)
		return RegionAttachment.new(name)
	end

	function self:newMeshAttachment (skin, name, path)
		return MeshAttachment.new(name)
	end

	function self:newSkinningMeshAttachment (skin, name, path)
		return SkinningMeshAttachment.new(name)
	end

	function self:newBoundingBoxAttachment (skin, name)
		return BoundingBoxAttachment.new(name)
	end
	
	function self:newPathAttachment(skin, name)
		return PathAttachment.new(name)
	end

	return self
end
return AttachmentLoader
