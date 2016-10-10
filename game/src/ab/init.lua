

-- 初始化

local ab = {}
ab.lib 				= require("src.ab.lib.init")
ab.class 			= ab.lib.middleclass


ab.audio 			= require("src.ab.audio.init")
ab.graphic 			= require("src.ab.graphic.init")
ab.utils 			= require("src.ab.utils.init")
ab.control 			= require("src.ab.control")
ab.director 		= require("src.ab.control.director")


return ab
