local skynet = require "skynet"

skynet.start(function()
	for i = 1, 1000000 do
		skynet.fork(function()end)
	end
	skynet.sleep(10)
	skynet.exit()
end)
