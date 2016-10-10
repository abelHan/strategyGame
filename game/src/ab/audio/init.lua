--[[
	@Date    : 2016-09-12 17:12:43
	@Author  : abel
	@Version : V1.0
	@Function: 音效
	@Class   : audio
--]]
local _audio = _audio or {}

local _curMusic = nil
local __audio = love.audio

function _audio:getMusic( ... )
	return _curMusic
end

function _audio:playMusic(music)
	_curMusic =  __audio.newSource(music)
	_curMusic:play()
end

function _audio:stopMusic()
	if _curMusic == nil then return end
	_curMusic:stop()
end

function _audio:pauseMusic( ... )
	if _curMusic == nil then return end
	_curMusic:pause()
end

function _audio:resumeMusic( ... )
	if _curMusic == nil then return end
	_curMusic:resume()
end

function _audio:getMusicVolume( ... )
	if _curMusic == nil then return end
	return _curMusic:getVolume()
end

function _audio:setMusicVolume(volume)
	if _curMusic == nil then return end
	return _curMusic:setVolume(volume)	
end

function _audio:playSound(sound)
	local sound = __audio.newSource(sound,"static")
	sound:play()
end

return _audio
