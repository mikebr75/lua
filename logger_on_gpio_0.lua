--main call of logger
function onTick()
   checkLoggerState()
end

--start the logger if not already logging
function checkLoggerState()
   if(getGpio(0) == 1 && isLogging() == 0) then
      startLogging()
   else if(getGpio(0) == 0 && isLogging() ==1)
      stopLogging()
   end   
end
