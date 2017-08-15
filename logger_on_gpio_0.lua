function startLogger()
   if(isLogging() == 0)
      startLogging()
   end
end

--main call of logger
function onTick()
   --check logger button
   if(getGpio(0) == 1)
      startLogger()
   else
      stopLogging()      
   end
end