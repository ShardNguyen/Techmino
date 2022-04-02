--Colorful RGB
local gc=love.graphics
local back={}
local shader=SHADER.rgb1

local t
function back.init()
    t=math.random()*260
    BG.resize(SCR.w,SCR.h)
end
function back.resize(_,h)
    shader:send('w',SCR.W)
    shader:send('h',h*SCR.dpi)
end
function back.update(dt)
    t=(t+dt)%2600
end
function back.draw()
    gc.clear(.08,.08,.084)
    shader:send('t',t)
    gc.setShader(shader)
    gc.rectangle('fill',0,0,SCR.w,SCR.h)
    gc.setShader()
end
return back
