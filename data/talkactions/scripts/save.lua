local savingEvent = 0

function onSay(cid, words, param, channel)
	if (isNumber(param)) then
		stopEvent(savingEvent)
		save(tonumber(param) * 60 * 1000)
	else
		saveData()
	end

	return true
end

function save(delay)
	saveData()
	if delay > 0 then
		savingEvent = addEvent(save, delay, delay)
	end
end