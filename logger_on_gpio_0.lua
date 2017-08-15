--main call of logger
function onTick()
   --check logger button
   if(getGpio(0) == 1) then
      startLogger()
   else
      stopLogging()      
   end
end

--start the logger if not already logging
function startLogger()
   if(isLogging() == 0) then
      startLogging()
   end
end
