--check logger on schedule
function onTick()
   checkLoggerState()
end

--start the logger if not already logging
function checkLoggerState()
   if getGpio(0) == 1 and isLogging() == 0 then
      startLogging()
   elseif getGpio(0) == 0 and isLogging() == 1
      stopLogging()
   end   
end
