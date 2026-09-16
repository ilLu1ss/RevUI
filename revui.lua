--[[
Rev UI es una libreria simple, limpia y facil de usar

version: 1.4 
author: Rev

]]



local a={cache={}::any}do do local function __modImpl()local b={
dark={
black=Color3.fromRGB(5,5,8),
border=Color3.fromRGB(70,50,100),
danger=Color3.fromRGB(220,60,60),
gray=Color3.fromRGB(90,90,110),
info=Color3.fromRGB(110,90,230),
primary=Color3.fromRGB(139,92,246),
purple=Color3.fromRGB(168,85,247),
success=Color3.fromRGB(50,210,100),
surface=Color3.fromRGB(15,15,20),
surface2=Color3.fromRGB(25,25,35),
text=Color3.fromRGB(235,235,240),
textMuted=Color3.fromRGB(120,120,140),
warning=Color3.fromRGB(245,170,50),
white=Color3.fromRGB(255,255,255),
},

midnight={
black=Color3.fromRGB(7,10,18),
border=Color3.fromRGB(80,94,118),
danger=Color3.fromRGB(255,94,94),
gray=Color3.fromRGB(129,140,160),
info=Color3.fromRGB(59,130,246),
primary=Color3.fromRGB(99,102,241),
purple=Color3.fromRGB(139,92,246),
success=Color3.fromRGB(34,197,94),
surface=Color3.fromRGB(15,23,42),
surface2=Color3.fromRGB(30,41,59),
text=Color3.fromRGB(241,245,249),
textMuted=Color3.fromRGB(148,163,184),
warning=Color3.fromRGB(245,158,11),
white=Color3.fromRGB(255,255,255),
},

sunset={
black=Color3.fromRGB(18,14,12),
border=Color3.fromRGB(139,92,60),
danger=Color3.fromRGB(248,113,113),
gray=Color3.fromRGB(148,163,184),
info=Color3.fromRGB(251,146,60),
primary=Color3.fromRGB(249,115,22),
purple=Color3.fromRGB(217,70,239),
success=Color3.fromRGB(34,197,94),
surface=Color3.fromRGB(28,20,18),
surface2=Color3.fromRGB(51,38,33),
text=Color3.fromRGB(255,248,240),
textMuted=Color3.fromRGB(214,172,135),
warning=Color3.fromRGB(250,204,21),
white=Color3.fromRGB(255,255,255),
},

forest={
black=Color3.fromRGB(9,15,12),
border=Color3.fromRGB(55,92,68),
danger=Color3.fromRGB(239,68,68),
gray=Color3.fromRGB(120,126,123),
info=Color3.fromRGB(59,130,246),
primary=Color3.fromRGB(16,185,129),
purple=Color3.fromRGB(52,211,153),
success=Color3.fromRGB(74,222,128),
surface=Color3.fromRGB(18,27,23),
surface2=Color3.fromRGB(26,39,35),
text=Color3.fromRGB(236,253,245),
textMuted=Color3.fromRGB(136,170,159),
warning=Color3.fromRGB(251,191,36),
white=Color3.fromRGB(255,255,255),
},





ocean={
black=Color3.fromRGB(6,12,20),
border=Color3.fromRGB(52,110,140),
danger=Color3.fromRGB(240,82,82),
gray=Color3.fromRGB(100,130,150),
info=Color3.fromRGB(56,189,248),
primary=Color3.fromRGB(14,165,233),
purple=Color3.fromRGB(168,85,247),
success=Color3.fromRGB(34,197,94),
surface=Color3.fromRGB(12,24,38),
surface2=Color3.fromRGB(20,38,58),
text=Color3.fromRGB(224,242,254),
textMuted=Color3.fromRGB(125,165,195),
warning=Color3.fromRGB(251,191,36),
white=Color3.fromRGB(255,255,255),
},

blood={
black=Color3.fromRGB(14,6,8),
border=Color3.fromRGB(130,45,55),
danger=Color3.fromRGB(255,60,60),
gray=Color3.fromRGB(130,90,95),
info=Color3.fromRGB(220,80,90),
primary=Color3.fromRGB(220,38,38),
purple=Color3.fromRGB(190,24,93),
success=Color3.fromRGB(74,222,128),
surface=Color3.fromRGB(24,10,12),
surface2=Color3.fromRGB(40,16,20),
text=Color3.fromRGB(255,235,238),
textMuted=Color3.fromRGB(180,120,130),
warning=Color3.fromRGB(251,146,60),
white=Color3.fromRGB(255,255,255),
},

amethyst={
black=Color3.fromRGB(12,8,20),
border=Color3.fromRGB(110,70,160),
danger=Color3.fromRGB(244,63,94),
gray=Color3.fromRGB(120,100,150),
info=Color3.fromRGB(167,139,250),
primary=Color3.fromRGB(167,139,250),
purple=Color3.fromRGB(192,132,252),
success=Color3.fromRGB(52,211,153),
surface=Color3.fromRGB(22,16,36),
surface2=Color3.fromRGB(34,26,54),
text=Color3.fromRGB(243,238,255),
textMuted=Color3.fromRGB(155,140,190),
warning=Color3.fromRGB(250,204,21),
white=Color3.fromRGB(255,255,255),
},

cyberpunk={
black=Color3.fromRGB(10,6,18),
border=Color3.fromRGB(180,40,170),
danger=Color3.fromRGB(255,45,120),
gray=Color3.fromRGB(120,90,140),
info=Color3.fromRGB(0,240,255),
primary=Color3.fromRGB(0,240,255),
purple=Color3.fromRGB(255,0,200),
success=Color3.fromRGB(0,255,140),
surface=Color3.fromRGB(16,10,30),
surface2=Color3.fromRGB(28,18,48),
text=Color3.fromRGB(240,255,255),
textMuted=Color3.fromRGB(130,150,200),
warning=Color3.fromRGB(255,200,0),
white=Color3.fromRGB(255,255,255),
},

gold={
black=Color3.fromRGB(16,13,8),
border=Color3.fromRGB(160,130,60),
danger=Color3.fromRGB(240,80,80),
gray=Color3.fromRGB(150,130,95),
info=Color3.fromRGB(250,204,21),
primary=Color3.fromRGB(234,179,8),
purple=Color3.fromRGB(202,138,4),
success=Color3.fromRGB(74,222,128),
surface=Color3.fromRGB(26,21,12),
surface2=Color3.fromRGB(42,34,18),
text=Color3.fromRGB(255,248,220),
textMuted=Color3.fromRGB(190,165,110),
warning=Color3.fromRGB(245,158,11),
white=Color3.fromRGB(255,255,255),
},

rose={
black=Color3.fromRGB(16,8,12),
border=Color3.fromRGB(160,80,110),
danger=Color3.fromRGB(225,29,72),
gray=Color3.fromRGB(150,110,125),
info=Color3.fromRGB(244,114,182),
primary=Color3.fromRGB(236,72,153),
purple=Color3.fromRGB(217,70,239),
success=Color3.fromRGB(52,211,153),
surface=Color3.fromRGB(28,14,22),
surface2=Color3.fromRGB(46,22,34),
text=Color3.fromRGB(255,240,246),
textMuted=Color3.fromRGB(195,140,165),
warning=Color3.fromRGB(251,191,36),
white=Color3.fromRGB(255,255,255),
},

arctic={
black=Color3.fromRGB(18,22,26),
border=Color3.fromRGB(120,140,160),
danger=Color3.fromRGB(220,80,80),
gray=Color3.fromRGB(140,155,170),
info=Color3.fromRGB(96,165,250),
primary=Color3.fromRGB(148,163,184),
purple=Color3.fromRGB(129,140,248),
success=Color3.fromRGB(52,211,153),
surface=Color3.fromRGB(30,36,42),
surface2=Color3.fromRGB(44,52,60),
text=Color3.fromRGB(248,250,252),
textMuted=Color3.fromRGB(160,175,190),
warning=Color3.fromRGB(245,158,11),
white=Color3.fromRGB(255,255,255),
},

emerald={
black=Color3.fromRGB(6,16,12),
border=Color3.fromRGB(60,130,100),
danger=Color3.fromRGB(239,68,68),
gray=Color3.fromRGB(100,140,120),
info=Color3.fromRGB(45,212,191),
primary=Color3.fromRGB(16,185,129),
purple=Color3.fromRGB(20,184,166),
success=Color3.fromRGB(74,222,128),
surface=Color3.fromRGB(10,26,20),
surface2=Color3.fromRGB(16,42,32),
text=Color3.fromRGB(236,253,245),
textMuted=Color3.fromRGB(120,175,155),
warning=Color3.fromRGB(251,191,36),
white=Color3.fromRGB(255,255,255),
},

coffee={
black=Color3.fromRGB(16,12,10),
border=Color3.fromRGB(120,90,70),
danger=Color3.fromRGB(220,90,70),
gray=Color3.fromRGB(140,115,95),
info=Color3.fromRGB(200,150,100),
primary=Color3.fromRGB(180,120,80),
purple=Color3.fromRGB(160,100,130),
success=Color3.fromRGB(110,180,120),
surface=Color3.fromRGB(28,20,16),
surface2=Color3.fromRGB(44,32,24),
text=Color3.fromRGB(250,240,230),
textMuted=Color3.fromRGB(175,145,120),
warning=Color3.fromRGB(230,160,60),
white=Color3.fromRGB(255,255,255),
},

synthwave={
black=Color3.fromRGB(12,8,24),
border=Color3.fromRGB(150,60,180),
danger=Color3.fromRGB(255,70,110),
gray=Color3.fromRGB(125,100,170),
info=Color3.fromRGB(45,212,255),
primary=Color3.fromRGB(217,70,239),
purple=Color3.fromRGB(147,51,234),
success=Color3.fromRGB(45,255,180),
surface=Color3.fromRGB(20,12,38),
surface2=Color3.fromRGB(32,20,56),
text=Color3.fromRGB(245,235,255),
textMuted=Color3.fromRGB(150,125,200),
warning=Color3.fromRGB(255,180,60),
white=Color3.fromRGB(255,255,255),
},
}

return b end function a.a():typeof(__modImpl())local b=a.cache.a if not b then b={c=__modImpl()}a.cache.a=b end return b.c end end do local function __modImpl()






local b={}

b.palette={
black=Color3.fromRGB(5,5,8),
border=Color3.fromRGB(70,50,100),
danger=Color3.fromRGB(220,60,60),
gray=Color3.fromRGB(90,90,110),
info=Color3.fromRGB(110,90,230),
primary=Color3.fromRGB(139,92,246),
purple=Color3.fromRGB(168,85,247),
success=Color3.fromRGB(50,210,100),
surface=Color3.fromRGB(15,15,20),
surface2=Color3.fromRGB(25,25,35),
text=Color3.fromRGB(235,235,240),
textMuted=Color3.fromRGB(120,120,140),
warning=Color3.fromRGB(245,170,50),
white=Color3.fromRGB(255,255,255),
}

b.presets=a.a()
b.themes=b.presets


local c={}
local d={}








function b.onChange(e,f)
d[#d+1]={fn=e,instance=f}
return e
end

function b.get(e)
return b.palette[e]
end


function b.bind(e,f,g)
e[f]=b.palette[g]
c[#c+1]={instance=e,prop=f,key=g}
end

local function resolveTheme(e)
if type(e)=="string"then
return b.presets[e]or b.themes[e]or b.Themes[e]
end
if type(e)=="table"then
return e
end
return nil
end

function b.set(e)
local f=resolveTheme(e)
if type(f)~="table"then
return false
end

for g,h in pairs(f)do
if b.palette[g]~=nil then
b.palette[g]=h
end
end

for g=#c,1,-1 do
local h=c[g]
if h.instance.Parent then
h.instance[h.prop]=b.palette[h.key]
else
table.remove(c,g)
end
end


for g=#d,1,-1 do
local h=d[g]
if h.instance and not h.instance.Parent then
table.remove(d,g)
else
pcall(h.fn,b.palette)
end
end

return true
end

b.use=b.set
b.apply=b.set

return b end function a.b():typeof(__modImpl())local b=a.cache.b if not b then b={c=__modImpl()}a.cache.b=b end return b.c end end do local function __modImpl()


























local b={}


b.FAMILIES={
montserrat="rbxasset://fonts/families/Montserrat.json",
builder="rbxasset://fonts/families/BuilderSans.json",
arimo="rbxasset://fonts/families/Arimo.json",
roboto="rbxasset://fonts/families/Roboto.json",
sourcesans="rbxasset://fonts/families/SourceSansPro.json",
}


b.roles={
title=Enum.FontWeight.Bold,
body=Enum.FontWeight.Regular,
bold=Enum.FontWeight.Bold,
medium=Enum.FontWeight.Medium,
semibold=Enum.FontWeight.SemiBold,
extra=Enum.FontWeight.ExtraBold,
}

b.family=b.FAMILIES.montserrat


b._bound=setmetatable({},{__mode="k"})


function b.face(c,d,e)
return Font.new(
b.family,
d or b.roles[c or"body"]or Enum.FontWeight.Regular,
e or Enum.FontStyle.Normal
)
end



function b.apply(c,d,e,f)
if not c then return end

d=d or"body"
local g,h=pcall(function()
c.FontFace=b.face(d,e,f)
end)

if not g then
warn(string.format(
"[RevUI] Fonts.apply sobre %s falló (rol '%s'): %s",
c.ClassName,tostring(d),tostring(h)
))
return
end

b._bound[c]={role=d,weight=e,style=f}
return c
end


function b.refresh()
for c,d in pairs(b._bound)do
if c.Parent==nil then
b._bound[c]=nil
else
c.FontFace=b.face(d.role,d.weight,d.style)
end
end
end


function b.setFamily(c)
b.family=b.FAMILIES[c]or c or b.FAMILIES.montserrat
b.refresh()
return b.family
end
b.setPreset=b.setFamily


function b.setRole(c,d)
b.roles[c]=d
b.refresh()
end

return b end function a.c():typeof(__modImpl())local b=a.cache.c if not b then b={c=__modImpl()}a.cache.c=b end return b.c end end do local function __modImpl()



return loadstring(game:HttpGet"https://raw.githubusercontent.com/Footagesus/Icons/refs/heads/main/lucide/dist/Icons.lua")()end function a.d():typeof(__modImpl())local b=a.cache.d if not b then b={c=__modImpl()}a.cache.d=b end return b.c end end do local function __modImpl()




local b=game:GetService"Players"
local c=game:GetService"RunService"

local d=a.d()

local e={}

function e.randomString(f)
f=f or math.random(12,24)
local g={}
for h=1,f do
g[h]=string.char(math.random(32,126))
end
return table.concat(g)
end

function e.getSecureParent()

if c:IsStudio()then
local f=b.LocalPlayer
return f:FindFirstChildOfClass"PlayerGui"
or f:WaitForChild"PlayerGui"
end


local f=game:GetService"CoreGui"

if get_hidden_gui then
return get_hidden_gui()
elseif gethui then
return gethui()
end

if syn and syn.protect_gui then
local g=Instance.new"ScreenGui"
g.Name=e.randomString()
syn.protect_gui(g)
g.Parent=f
return g
end

return f
end

function e.getIcon(f)
return d[f]or""
end







function e.soften(f)
if typeof(f)~="Color3"then return f end
local g=(f.R+f.G+f.B)/3
local h=f:Lerp(Color3.new(g,g,g),0.15)
local i,j,k=h:ToHSV()
return Color3.fromHSV(i,j,math.max(0,k*0.95))
end

function e.merge(f,g)
g=g or{}
for h,i in pairs(g)do
if h=="BgColor"then
f.BackgroundColor3=i
else
f[h]=i
end
end
return f
end

return e end function a.e():typeof(__modImpl())local b=a.cache.e if not b then b={c=__modImpl()}a.cache.e=b end return b.c end end do local function __modImpl()















local b=a.c()

local c={



FontRole=function(c,d)
b.apply(c,d)
end,

CornerRadius=function(c,d)
local e=Instance.new"UICorner"
e.CornerRadius=d
e.Parent=c
end,

Stroke=function(c,d)
local e=Instance.new"UIStroke"
if type(d)=="table"then
e.Color=d.Color or Color3.new(0,0,0)
e.Thickness=d.Thickness or 1
e.Transparency=d.Transparency or 0
e.ApplyStrokeMode=d.ApplyStrokeMode or Enum.ApplyStrokeMode.Border
else
e.Thickness=d
end
e.Parent=c
end,

Padding=function(c,d)
local e=Instance.new"UIPadding"


local function norm(f)
if typeof(f)=="UDim"then return f end
if type(f)=="number"then return UDim.new(0,f)end
return UDim.new(0,0)
end

if type(d)=="table"
and(d.Top or d.Bottom or d.Left or d.Right)then
e.PaddingTop=norm(d.Top)
e.PaddingBottom=norm(d.Bottom)
e.PaddingLeft=norm(d.Left)
e.PaddingRight=norm(d.Right)
else
local f=norm(d)
e.PaddingTop=f
e.PaddingBottom=f
e.PaddingLeft=f
e.PaddingRight=f
end

e.Parent=c
end,

ListLayout=function(c,d)
local e=Instance.new"UIListLayout"
e.Padding=d.Padding or UDim.new(0,0)
e.FillDirection=d.FillDirection or Enum.FillDirection.Vertical
e.HorizontalAlignment=d.HorizontalAlignment or Enum.HorizontalAlignment.Left
e.VerticalAlignment=d.VerticalAlignment or Enum.VerticalAlignment.Top
e.SortOrder=d.SortOrder or Enum.SortOrder.LayoutOrder
e.Parent=c
return e
end,

GridLayout=function(c,d)
local e=Instance.new"UIGridLayout"
e.CellSize=d.CellSize or UDim2.new(0,100,0,100)
e.CellPadding=d.CellPadding or UDim.new(0,0)
e.FillDirection=d.FillDirection or Enum.FillDirection.Horizontal
e.HorizontalAlignment=d.HorizontalAlignment or Enum.HorizontalAlignment.Left
e.VerticalAlignment=d.VerticalAlignment or Enum.VerticalAlignment.Top
e.SortOrder=d.SortOrder or Enum.SortOrder.LayoutOrder
e.Parent=c
return e
end,

AspectRatio=function(c,d)
local e=Instance.new"UIAspectRatioConstraint"
if type(d)=="table"then
e.AspectRatio=d.AspectRatio or 1
e.AspectType=d.AspectType or Enum.AspectType.FitWithinMaxSize
e.DominantAxis=d.DominantAxis or Enum.DominantAxis.Width
else
e.AspectRatio=d
end
e.Parent=c
end,

SizeConstraint=function(c,d)
local e=Instance.new"UISizeConstraint"
e.MinSize=d.MinSize or Vector2.new(0,0)
e.MaxSize=d.MaxSize or Vector2.new(math.huge,math.huge)
e.Parent=c
end,

TextConstraint=function(c,d)
local e=Instance.new"UITextSizeConstraint"
e.MinTextSize=d.MinTextSize or 1
e.MaxTextSize=d.MaxTextSize or 100
e.Parent=c
end,

Gradient=function(c,d)
local e=Instance.new"UIGradient"
e.Color=d.Color or ColorSequence.new(Color3.new(1,1,1))
e.Rotation=d.Rotation or 0
e.Offset=d.Offset or Vector2.new(0,0)
if d.Transparency then e.Transparency=d.Transparency end
e.Parent=c
end,

Events=function(c,d)
for e,f in pairs(d)do
local g=c[e]
if g and typeof(g)=="RBXScriptSignal"then
g:Connect(f)
end
end
end,

Children=function(c,d)
for e,f in ipairs(d)do
if typeof(f)=="Instance"then
f.Parent=c
end
end
end,
}

return c end function a.f():typeof(__modImpl())local b=a.cache.f if not b then b={c=__modImpl()}a.cache.f=b end return b.c end end do local function __modImpl()


















































































































local b=a.b()
local c=a.e()
local d=a.f()

local e=b.palette
local f=c.merge

local g={}

function g.create(h,i,j)
local k=Instance.new(h)
i=i or{}

for l,m in pairs(i)do

local n=pcall(function()
k[l]=m
end)

if not n then

if d[l]then
local o,p=pcall(d[l],k,m)
if not o then
warn(string.format(
"[RevUI] special key '%s' on %s failed: %s",
l,h,tostring(p)
))
end
else
warn(string.format("[RevUI] Failed to set '%s' on %s",l,h))
end
end
end

if j then
k.Parent=j
end

return k
end

function g.frame(h,i)
return g.create("Frame",f({
Size=UDim2.new(1,0,0,60),
BackgroundColor3=e.surface,
BorderSizePixel=0,
CornerRadius=UDim.new(0,8),
},h),i)
end

function g.button(h,i)
return g.create("TextButton",f({
Size=UDim2.new(1,0,0,40),
BackgroundColor3=e.primary,
Text="",
TextColor3=e.text,
FontRole="title",
TextSize=14,
BorderSizePixel=0,
AutoButtonColor=true,
CornerRadius=UDim.new(0,8),
},h),i)
end

function g.label(h,i)
return g.create("TextLabel",f({
Size=UDim2.new(1,0,0,20),
BackgroundTransparency=1,
Text="",
TextColor3=e.text,
FontRole="semibold",
TextSize=12,
TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Center,
BorderSizePixel=0,
},h),i)
end

function g.textBox(h,i)
return g.create("TextBox",f({
Size=UDim2.new(1,0,0,40),
BackgroundColor3=e.surface2,
Text="",
TextColor3=e.text,
PlaceholderColor3=e.textMuted,
FontRole="medium",
TextSize=14,
ClearTextOnFocus=false,
BorderSizePixel=0,
CornerRadius=UDim.new(0,8),
},h),i)
end

function g.imageLabel(h,i)
return g.create("ImageLabel",f({
Size=UDim2.new(0,40,0,40),
BackgroundTransparency=1,
Image="",
BorderSizePixel=0,
CornerRadius=UDim.new(0,8),
},h),i)
end

function g.imageButton(h,i)
return g.create("ImageButton",f({
Size=UDim2.new(0,40,0,40),
BackgroundTransparency=1,
Image="",
BorderSizePixel=0,
AutoButtonColor=false,
CornerRadius=UDim.new(0,8),
},h),i)
end

function g.scrollingFrame(h,i)
return g.create("ScrollingFrame",f({
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
BorderSizePixel=0,
ScrollBarThickness=4,
ScrollBarImageColor3=e.primary,
AutomaticCanvasSize=Enum.AutomaticSize.Y,
},h),i)
end

function g.icon(h,i,j,k)
return g.imageLabel(f({
Size=UDim2.new(0,i or 20,0,i or 20),
BackgroundTransparency=1,
Image=c.getIcon(h),
ImageColor3=e.text,
},j),k)
end

return g end function a.g():typeof(__modImpl())local b=a.cache.g if not b then b={c=__modImpl()}a.cache.g=b end return b.c end end do local function __modImpl()









local b=game:GetService"TweenService"

local c=a.b()
local d=a.g()a.e()


local e=c.palette

local f={}

local g={
success="check",error="ban",warning="triangle-alert",
info="info",playing="clapperboard",saved="save",
}
local h={
success="Success",error="Error",warning="Warning",
info="Info",playing="Now Playing",saved="Saved",
}
local i={
success="success",error="danger",warning="warning",
info="info",playing="primary",saved="purple",
}

local j
local k=4

function f.init(l)
if j and j.Parent then return end

j=d.frame({
Name="NotificationHolder",
Size=UDim2.new(0,320,1,-40),
Position=UDim2.new(1,-340,0.5,-200),
BackgroundTransparency=1,
ZIndex=100,
},l)

d.create("UIListLayout",{
HorizontalAlignment=Enum.HorizontalAlignment.Right,
VerticalAlignment=Enum.VerticalAlignment.Top,
Padding=UDim.new(0,14),
},j)

d.create("UIPadding",{
PaddingTop=UDim.new(0,8),
PaddingRight=UDim.new(0,8),
},j)
end

local function dismiss(l)
if not l or not l.Parent then return end
local m=b:Create(l,
TweenInfo.new(0.28,Enum.EasingStyle.Quad,Enum.EasingDirection.In),{
Position=UDim2.new(1,18,0,0),
BackgroundTransparency=1,
})
m:Play()
m.Completed:Connect(function()
if l and l.Parent then l:Destroy()end
end)
end

function f.show(l,m)
local n=type(l)=="table"and l
or{message=l,type=m}

local o=n.type or"info"
local p=n.duration or 3.2

if not j or not j.Parent then
warn"[RevUI] Notifications.init no ha sido llamado"
return
end


local q=0
local r
for s,t in ipairs(j:GetChildren())do
if t:IsA"Frame"then
q+=1
if r==nil or t.LayoutOrder<r.LayoutOrder then
r=t
end
end
end
if q>=k and r then
r:Destroy()
end

local s=i[o]or"surface2"



local t=d.frame({
Size=UDim2.new(0,270,0,70),
BackgroundColor3=e[s],
ZIndex=101,
CornerRadius=UDim.new(0,12),
Stroke={Color=e.white,Thickness=1,Transparency=0.88},
},j)
t.LayoutOrder=os.clock()
c.bind(t,"BackgroundColor3",s)


d.frame({
Name="Lightener",
Size=UDim2.new(1,0,1,0),
Position=UDim2.new(0,0,0,0),
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=0.5,
ZIndex=101,
CornerRadius=UDim.new(0,12),
},t)


local u=d.frame({
Name="FillClip",
Size=UDim2.new(1,0,1,0),
Position=UDim2.new(0,0,0,0),
BackgroundTransparency=1,
ClipsDescendants=true,
ZIndex=102,
CornerRadius=UDim.new(0,12),
},t)


local v=d.frame({
Name="Fill",
Size=UDim2.new(1,0,1,0),
Position=UDim2.new(0,0,0,0),
BackgroundColor3=e[s],
ZIndex=102,
},u)
c.bind(v,"BackgroundColor3",s)


d.icon(g[o]or"bell",24,{
Position=UDim2.new(0,14,0.5,-10),
ImageColor3=e.white,
ZIndex=103,
},t)


d.frame({
Name="IconSeparator",
Size=UDim2.new(0,1,1,-24),
Position=UDim2.new(0,50,0,12),
BackgroundColor3=e.white,
BackgroundTransparency=0.72,
BorderSizePixel=0,
ZIndex=103,
},t)


d.label({
Size=UDim2.new(1,-80,0,18),
Position=UDim2.new(0,62,0,13),
Text=n.title or h[o]or"Notification",
FontRole="bold",
TextSize=16,
TextColor3=e.white,
TextXAlignment=Enum.TextXAlignment.Left,
ZIndex=103,
},t)


d.frame({
Name="TitleSeparator",
Size=UDim2.new(1,-74,0,1),
Position=UDim2.new(0,62,0,35),
BackgroundColor3=e.white,
BackgroundTransparency=0.72,
BorderSizePixel=0,
ZIndex=103,
},t)


d.label({
Size=UDim2.new(1,-80,0,28),
Position=UDim2.new(0,62,0,39),
Text=tostring(n.message or""),
TextSize=13,
TextColor3=e.white,
TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Top,
TextWrapped=true,
ZIndex=103,
},t)


local w=d.create("TextButton",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
Text="",
ZIndex=104,
},t)
w.MouseButton1Click:Connect(function()
if n.onclick then n.onclick()end
dismiss(t)
end)


t.Position=UDim2.new(1,18,0,0)
t.BackgroundTransparency=0.15
b:Create(t,
TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{
Position=UDim2.new(0,0,0,0),
BackgroundTransparency=0,
}):Play()


b:Create(v,
TweenInfo.new(p,Enum.EasingStyle.Linear),{
Size=UDim2.new(0,0,1,0),
}):Play()

task.delay(p,function()
if t and t.Parent then dismiss(t)end
end)

return t
end

return f end function a.h():typeof(__modImpl())local b=a.cache.h if not b then b={c=__modImpl()}a.cache.h=b end return b.c end end do local function __modImpl()






local b=a.b()
local c=a.g()

local d=b.palette

local e={}

function e.resolveTextAlign(f)
if f=="center"then
return Enum.TextXAlignment.Center
elseif f=="right"then
return Enum.TextXAlignment.Right
end
return Enum.TextXAlignment.Left
end









function e.row(f,g,h)
h=h or{}
g=g or{}

local i=g.description or g.desc or""
local j=h.compact==true
local k=h.controlWidth or 0


local l=h.heightScale or 1.4


local m=h.controlScale or l
local n=math.floor((h.height or 44)*l+0.5)
local o=math.floor(12*l+0.5)

local p=o
if h.maxDescExtra~=nil then
p=math.min(o,h.maxDescExtra)
end
local q=math.floor((h.controlHeight or 24)*m+0.5)

local r=(i~=""and n+p)or n

if j and k>0 then
r+=q+10
end

local s=c.create("Frame",{
Name=g.title or"Element",
Size=UDim2.new(1,-2,0,r),
BackgroundColor3=g.color or d.surface2,
BorderSizePixel=0,
CornerRadius=UDim.new(0,8),
LayoutOrder=g.order or 0,
ClipsDescendants=h.clips==true,
},f)

if not g.color then
b.bind(s,"BackgroundColor3","surface2")
end


if g.border==true then
local t=c.create("UIStroke",{
Color=d.border,
Thickness=1,
Transparency=0.4,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
},s)
b.bind(t,"Color","border")
end





local t=(not j and k>0)and(k+22)or 26

local u=c.create("TextLabel",{
BackgroundTransparency=1,
Position=UDim2.new(0,12,0,i~=""and 10 or 12),
Size=UDim2.new(1,-t,0,20),
FontRole=g.fontRole or"extra",
Text=g.title or"",
TextColor3=d.text,
TextSize=14,
TextXAlignment=Enum.TextXAlignment.Left,
TextTruncate=Enum.TextTruncate.AtEnd,
},s)

b.bind(u,"TextColor3","text")

if i~=""then
local v=c.create("TextLabel",{
BackgroundTransparency=1,
Position=UDim2.new(0,12,0,34),
Size=UDim2.new(1,-t,0,15),
FontRole=g.descFontRole or"semibold",
Text=i,
TextColor3=d.textMuted,
TextSize=12,
TextXAlignment=Enum.TextXAlignment.Left,
TextTruncate=Enum.TextTruncate.AtEnd,
},s)
b.bind(v,"TextColor3","textMuted")
end

local v
if k>0 then
if j then

v=c.create("Frame",{
BackgroundTransparency=1,
Position=UDim2.new(0,10,1,-(q+10)),
Size=UDim2.new(1,-20,0,q),
},s)
else

v=c.create("Frame",{
BackgroundTransparency=1,
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,-10,0.5,0),
Size=UDim2.new(0,k,0,q),
},s)
end
end

return s,u,v
end


function e.overlay(f)
return c.create("TextButton",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
Text="",
AutoButtonColor=false,
},f)
end


function e.autoCleanup(f,g)
f.Destroying:Connect(function()
for h,i in ipairs(g)do
pcall(function()i:Disconnect()end)
end
end)
end







function e.hover(f,g)
local function resolve()
if type(g)=="function"then
return g()
end
return g or d.surface2
end

f.MouseEnter:Connect(function()
f.BackgroundColor3=resolve():Lerp(d.white,0.06)
end)
f.MouseLeave:Connect(function()
f.BackgroundColor3=resolve()
end)
end

return e end function a.i():typeof(__modImpl())local b=a.cache.i if not b then b={c=__modImpl()}a.cache.i=b end return b.c end end do local function __modImpl()
local b=a.b()
local c=a.i()
local d=a.g()
local e=a.e()

local f=b.palette

return function(g,h)
h=h or{}

local i=h.description or h.desc or""
local j=i~=""




local k={}
for l,m in pairs(h)do
if l~="description"and l~="desc"then
k[l]=m
end
end

local l,m=c.row(g,k,{height=40,heightScale=1.25})





local n
local o=h.textColor~=nil
local p=h.color~=nil
local q=h.align or h.textAlign or"center"
local r=c.resolveTextAlign(q)
local s=h.textColor or f.text
local t=h.icon
local u=h.iconSize or 14
local v=t and(h.iconColor or s)or nil


local w=t~=nil and t~=""
local x=w and 30 or 12
local y=w and-42 or-24

local function currentBaseColor()
if p and typeof(h.color)=="Color3"then
return e.soften(h.color)
end
return f.surface2
end

local function luminance(z)
if typeof(z)~="Color3"then
return 0.5
end
return 0.2126*z.R+0.7152*z.G+0.0722*z.B
end

local function contrastTextColor(z)
if o and typeof(h.textColor)=="Color3"then
return h.textColor
end

if luminance(z)>0.62 then
return Color3.fromRGB(18,18,20)
end
return f.text
end

local function contrastMutedColor(z)
if luminance(z)>0.62 then
return Color3.fromRGB(64,64,72)
end
return f.textMuted
end

local function refreshTextColors()
local z=l.BackgroundColor3
m.TextColor3=contrastTextColor(z)
if n then
n.TextColor3=contrastMutedColor(z)
end
end

l.BackgroundColor3=currentBaseColor()
m.TextColor3=contrastTextColor(l.BackgroundColor3)
m.TextXAlignment=r
m.TextYAlignment=Enum.TextYAlignment.Center



if o then
m.TextColor3=s
end

if w then
d.icon(t,u,{
Position=UDim2.new(0,14,0.5,-(u/2)),
ImageColor3=v,
},l)
end

local function syncTitleLayout()
if n and n.Text~=""then
m.Position=UDim2.new(0,x,0,7)
m.Size=UDim2.new(1,y,0,14)
else
m.Position=UDim2.new(0,w and 30 or 0,0,0)
m.Size=UDim2.new(1,y,1,0)
end
end

if j then
m.Position=UDim2.new(0,x,0,7)
m.Size=UDim2.new(1,y,0,14)

n=d.create("TextLabel",{
BackgroundTransparency=1,
Position=UDim2.new(0,x,0,22),
Size=UDim2.new(1,y,0,11),
FontRole=h.descFontRole or"semibold",
Text=i,
TextColor3=contrastMutedColor(l.BackgroundColor3),
TextSize=11,
TextXAlignment=r,
TextYAlignment=Enum.TextYAlignment.Center,
TextTruncate=Enum.TextTruncate.AtEnd,
},l)



else
syncTitleLayout()
end

local z=c.overlay(l)

c.hover(l,function()return currentBaseColor()end)
l.MouseEnter:Connect(function()
refreshTextColors()
end)
l.MouseLeave:Connect(function()
refreshTextColors()
end)
b.onChange(function()
refreshTextColors()
end,l)

z.MouseButton1Click:Connect(function()
if h.callback then h.callback()end
end)

local A={instance=l}

function A.SetText(B,C)
m.Text=tostring(C)
h.title=m.Text
refreshTextColors()
return A
end

function A.SetTitle(B,C)
return A:SetText(C)
end

function A.GetText(B)
return m.Text
end

function A.GetTitle(B)
return A:GetText()
end

function A.SetDescription(B,C)
local D=C==nil and""or tostring(C)
h.description=D
h.desc=D

if D~=""then
if not n then
n=d.create("TextLabel",{
BackgroundTransparency=1,
Position=UDim2.new(0,x,0,22),
Size=UDim2.new(1,y,0,11),
FontRole=h.descFontRole or"semibold",
Text=D,
TextColor3=contrastMutedColor(l.BackgroundColor3),
TextSize=11,
TextXAlignment=r,
TextYAlignment=Enum.TextYAlignment.Center,
TextTruncate=Enum.TextTruncate.AtEnd,
},l)
else
n.Text=D
end
n.Visible=true
n.TextColor3=contrastMutedColor(l.BackgroundColor3)
elseif n then
n.Text=""
n.Visible=false
end

syncTitleLayout()
return A
end

function A.GetDescription(B)
return h.description or h.desc or""
end

function A.SetColor(B,C)
if C==nil then
p=false
h.color=nil
else
p=true
h.color=C
end
l.BackgroundColor3=currentBaseColor()
refreshTextColors()
return A
end

function A.GetColor(B)
if p and typeof(h.color)=="Color3"then
return h.color
end
return nil
end

function A.Set(B,C,D)
if type(C)=="table"then
for E,F in pairs(C)do
A:Set(E,F)
end
return A
end

local E=tostring(C)
if E=="text"or E=="Text"or E=="title"or E=="Title"then
return A:SetText(D)
elseif E=="description"or E=="Description"or E=="desc"or E=="Desc"then
return A:SetDescription(D)
elseif E=="color"or E=="Color"then
return A:SetColor(D)
end

return A
end

function A.Get(B,C)
if C==nil then
return{
text=A:GetText(),
description=A:GetDescription(),
color=A:GetColor(),
}
end

local D=tostring(C)
if D=="text"or D=="Text"or D=="title"or D=="Title"then
return A:GetText()
elseif D=="description"or D=="Description"or D=="desc"or D=="Desc"then
return A:GetDescription()
elseif D=="color"or D=="Color"then
return A:GetColor()
end

return nil
end

return A
end end function a.j():typeof(__modImpl())local b=a.cache.j if not b then b={c=__modImpl()}a.cache.j=b end return b.c end end do local function __modImpl()
local b=a.g()

return function(c,d)
if type(d)=="number"then
d={p=d}
elseif type(d)~="table"then
d={}
end

local e=d.p or d.padding or d.size or d.height or d.value or 8
local f=tonumber(e)or 8
if type(e)=="string"then
local g=tonumber(e)
if g then
f=g
end
end

local g=b.create("Frame",{
Name=d.name or"Space",
Size=UDim2.new(1,0,0,math.max(0,f)),
BackgroundTransparency=1,
BorderSizePixel=0,
LayoutOrder=d.order or 0,
},c)

return{instance=g}
end end function a.k():typeof(__modImpl())local b=a.cache.k if not b then b={c=__modImpl()}a.cache.k=b end return b.c end end do local function __modImpl()

local b=game:GetService"TweenService"

local c=a.b()
local d=a.g()
local e=a.i()
local f=a.e()

local g=c.palette










return function(h,i)
i=i or{}
local j=i.description or i.desc or""




local k=44
local l=1.12
local m=math.floor(k*l+0.5)


local n=42
local o=math.floor(24*l+0.5)
local p=3
local q=o-p*2 local

r, s, t=e.row(h,{
title=i.title,
description=j~=""and j or nil,
color=nil,
order=i.order,
border=i.border,
},{
height=k,
heightScale=l,
controlWidth=n,controlHeight=24,
maxDescExtra=math.floor(m*0.2+0.5),
})

local u=i.color~=nil
local v=i.color
local w=i.default==true

local x=d.create("Frame",{
Size=UDim2.new(1,0,1,0),
CornerRadius=UDim.new(1,0),
BorderSizePixel=0,
},t)

local y=d.create("Frame",{
Size=UDim2.new(0,q,0,q),
AnchorPoint=Vector2.new(0,0.5),
BackgroundColor3=g.white,
CornerRadius=UDim.new(1,0),
BorderSizePixel=0,
},x)


local function desat15(z)return f.soften(z)end


local function onColor()
if u and typeof(v)=="Color3"then
return desat15(v)
end
return g.primary
end

local function render(z)
local A=UDim2.new(0,p,0.5,0)
local B=UDim2.new(1,-(q+p),0.5,0)
local C=w and B or A
local D=w and onColor()or g.gray

if z then

b:Create(y,TweenInfo.new(0.25,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{
Position=C,
}):Play()
b:Create(x,TweenInfo.new(0.22,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{
BackgroundColor3=D,
}):Play()


local E=q+4
local F=b:Create(y,TweenInfo.new(0.12,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{
Size=UDim2.new(0,E,0,E),
})
F:Play()
F.Completed:Connect(function()
b:Create(y,TweenInfo.new(0.14,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{
Size=UDim2.new(0,q,0,q),
}):Play()
end)
else
y.Position=C
x.BackgroundColor3=D
end
end

render(false)


c.onChange(function()
x.BackgroundColor3=w and onColor()or g.gray
y.BackgroundColor3=g.white
end,r)

local z=e.overlay(r)
z.MouseButton1Click:Connect(function()
w=not w
render(true)
if i.callback then i.callback(w)end
end)

local A={instance=r}
function A.Set(B,C,D)
w=C==true
render(true)
if D~=false and i.callback then i.callback(w)end
end
function A.Get(B)return w end
return A
end end function a.l():typeof(__modImpl())local b=a.cache.l if not b then b={c=__modImpl()}a.cache.l=b end return b.c end end do local function __modImpl()
local b=game:GetService"UserInputService"
local c=game:GetService"TweenService"

local d=a.b()
local e=a.g()
local f=a.i()
local g=a.e()

local h=d.palette














return function(i,j)
j=j or{}
local k=j.description or j.desc or""

local l=j.compact==true local

m, n=f.row(i,{
title=j.title,
description=k~=""and k or nil,
color=j.color,
order=j.order,
border=j.border,
},{height=52,controlWidth=0,compact=l})

if k~=""then
n.Position=UDim2.new(0,14,0,9)
else
n.Position=UDim2.new(0,14,0,12)
end




local o=l and 55 or 90


n.Size=UDim2.new(1,-(o+34),0,15)

local p=j.min or 0
local q=j.max or 100
local r=j.step or 1
local s=math.clamp(j.default or p,p,q)

local t=e.create("TextLabel",{
BackgroundTransparency=1,
AnchorPoint=Vector2.new(1,0),
Position=UDim2.new(1,-14,0,j.description and 9 or 8),
Size=UDim2.new(0,o,0,16),
FontRole="bold",
Text="",
TextColor3=h.text,
TextSize=12,
TextXAlignment=Enum.TextXAlignment.Right,
},m)
d.bind(t,"TextColor3","text")

local u=e.create("Frame",{
Position=UDim2.new(0,14,1,-26),
Size=UDim2.new(1,-28,0,8),
BackgroundColor3=h.black,
CornerRadius=UDim.new(1,0),
BorderSizePixel=0,
},m)

local v=j.color~=nil

local w=v and g.soften(j.color)or h.primary
local x=e.create("Frame",{
Size=UDim2.new(0,0,1,0),
BackgroundColor3=w,
CornerRadius=UDim.new(1,0),
BorderSizePixel=0,
},u)


local y=18
local z=22
local A=y+2

local B=e.create("Frame",{
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0,0,0.5,0),
Size=UDim2.new(0,y,0,y),
BackgroundColor3=h.white,
CornerRadius=UDim.new(1,0),
BorderSizePixel=0,
},u)


local function tweenKnob(C,D,E)
c:Create(B,TweenInfo.new(D or 0.15,E or Enum.EasingStyle.Back,Enum.EasingDirection.Out),{
Size=UDim2.new(0,C,0,C),
}):Play()
end

local function formatNumber(C)
if r>=1 then return tostring(math.floor(C+0.5))end
return string.format("%.1f",C)
end

local function render(C)
local D=(s-p)/(q-p)
local E=UDim2.new(D,0,1,0)
local F=UDim2.new(D,0,0.5,0)
t.Text=formatNumber(s)..(j.suffix or"")
if C then
c:Create(x,TweenInfo.new(0.12,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{
Size=E,
}):Play()
c:Create(B,TweenInfo.new(0.12,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{
Position=F,
}):Play()
else
x.Size=E
B.Position=F
end
end

render(false)




local function setFromX(C)
local D=math.clamp((C-u.AbsolutePosition.X)/math.max(u.AbsoluteSize.X,1),0,1)
local E=p+(q-p)*D
local F=math.floor(E/r+0.5)*r
F=math.clamp(F,p,q)
if F~=s then
s=F
render(false)
return true
end
return false
end




local C=false
local D

u.InputBegan:Connect(function(E)
if C then return end
if E.UserInputType~=Enum.UserInputType.MouseButton1
and E.UserInputType~=Enum.UserInputType.Touch then
return
end

C=true
D=E


tweenKnob(z,0.15,Enum.EasingStyle.Back)

local F=setFromX(E.Position.X)

local G
G=b.InputChanged:Connect(function(H)

if H==D
or(H.UserInputType==Enum.UserInputType.MouseMovement
and D.UserInputType==Enum.UserInputType.MouseButton1)then
if setFromX(H.Position.X)then
F=true
end
end
end)

local H
H=b.InputEnded:Connect(function(I)
if I.UserInputType==Enum.UserInputType.MouseButton1
or I.UserInputType==Enum.UserInputType.Touch then
G:Disconnect()
H:Disconnect()

C=false
D=nil


tweenKnob(y,0.22,Enum.EasingStyle.Back)

if F and j.callback then
j.callback(s)
end
end
end)
end)


u.MouseEnter:Connect(function()
if not C then tweenKnob(A,0.15,Enum.EasingStyle.Quad)end
end)
u.MouseLeave:Connect(function()
if not C then tweenKnob(y,0.15,Enum.EasingStyle.Quad)end
end)



d.onChange(function()
if not v then
x.BackgroundColor3=h.primary
else
x.BackgroundColor3=g.soften(j.color)
end
end,m)

local E={instance=m}
function E.Set(F,G,H)
s=math.clamp(G,p,q)
render(true)
if H~=false and j.callback then j.callback(s)end
end
function E.Get(F)return s end
return E
end end function a.m():typeof(__modImpl())local b=a.cache.m if not b then b={c=__modImpl()}a.cache.m=b end return b.c end end do local function __modImpl()
local b=game:GetService"TweenService"
local c=game:GetService"UserInputService"

local d=a.b()
local e=a.g()
local f=a.i()
local g=a.e()

local h=d.palette
local i=44

return function(j,k)
k=k or{}
local l=k.description or k.desc or""

local m,n,o=f.row(j,{
title=k.title,
description=l~=""and l or nil,

color=k.color~=nil and g.soften(k.color)or nil,
order=k.order,
border=k.border,
},{height=i,controlWidth=140,clips=false,compact=k.compact})

if l~=""then
n.Position=UDim2.new(0,14,0,9)
else
n.Position=UDim2.new(0,14,0,12)
end

m.ClipsDescendants=false
if o and o.ClipsDescendants~=nil then
o.ClipsDescendants=false
end

local p=k.options or{}
local q=k.default or p[1]
local r=false
local s=k.color~=nil




local t={}
local function raiseAncestors(u)
if u then
t={}
local v=m
while v and v.Parent and not v:IsA"ScreenGui"do
t[v]=v.ZIndex
v.ZIndex=1000
v=v.Parent
end
else
for v,w in pairs(t)do
pcall(function()
if v.Parent then v.ZIndex=w end
end)
end
t={}
end
end

local u=e.button({
Size=UDim2.new(1,0,1,0),
BackgroundColor3=h.black,
Text=q or"Seleccionar",
TextSize=12,
FontRole="semibold",
TextXAlignment=Enum.TextXAlignment.Left,
ZIndex=1,
},o)
d.bind(u,"BackgroundColor3","black")
d.bind(u,"TextColor3","text")
e.create("UIPadding",{PaddingLeft=UDim.new(0,10)},u)

local v=e.icon("chevron-down",14,{
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,-8,0.5,0),
ImageColor3=h.textMuted,
ZIndex=2,
},u)

local w=e.create("Frame",{
Position=UDim2.new(0,0,1,2),
Size=UDim2.new(1,0,0,0),
BackgroundColor3=h.surface,
BorderSizePixel=0,
Visible=false,
ZIndex=10,
},o)
d.bind(w,"BackgroundColor3","surface")

local x=e.create("UIStroke",{Color=h.surface2,Thickness=1},w)
d.bind(x,"Color","surface2")

local y=e.create("ScrollingFrame",{
Position=UDim2.new(0,4,0,4),
Size=UDim2.new(1,-8,1,-8),
BackgroundTransparency=1,
BorderSizePixel=0,
CanvasSize=UDim2.new(0,0,0,0),
AutomaticCanvasSize=Enum.AutomaticSize.Y,
ScrollBarThickness=2,
ZIndex=11,
},w)


local z=Instance.new"UIListLayout"
z.Padding=UDim.new(0,4)
z.SortOrder=Enum.SortOrder.LayoutOrder
z.FillDirection=Enum.FillDirection.Vertical
z.Parent=y

local A={}
local B


local function pointInGui(C,D,E)
if not C or not C.Visible then return false end
local F=C.AbsolutePosition
local G=C.AbsoluteSize
return D>=F.X and D<=F.X+G.X
and E>=F.Y and E<=F.Y+G.Y
end

local function disconnectOutside()
if B then
B:Disconnect()
B=nil
end
end

local C

local function connectOutside()
disconnectOutside()
B=c.InputBegan:Connect(function(D,E)

if D.UserInputType~=Enum.UserInputType.MouseButton1
and D.UserInputType~=Enum.UserInputType.Touch then
return
end

local F,G=D.Position.X,D.Position.Y


if pointInGui(u,F,G)then return end


if pointInGui(w,F,G)then return end


C(false)
end)
end

C=function(D)
r=D
if D then
w.Visible=true
raiseAncestors(true)
connectOutside()
else
disconnectOutside()
end

local E=math.min(#p*32+8,160)

b:Create(w,TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{
Size=UDim2.new(1,0,0,D and E or 0),
}):Play()

b:Create(v,TweenInfo.new(0.2),{Rotation=D and 180 or 0}):Play()

if not D then
task.delay(0.2,function()
if not r then
w.Visible=false
raiseAncestors(false)
end
end)
end
end



local function selectedColor()
if s then return g.soften(k.color)end
return h.primary
end
local function paintOptions()
for D,E in ipairs(A)do
E.BackgroundColor3=p[D]==q and selectedColor()or h.surface2
E.TextColor3=h.text
end
end

local function buildOptions()
for D,E in ipairs(A)do E:Destroy()end
table.clear(A)
for D,E in ipairs(p)do
local F=e.button({
Size=UDim2.new(1,0,0,28),
BackgroundColor3=E==q and selectedColor()or h.surface2,
Text=tostring(E),
TextColor3=h.text,
TextSize=12,
FontRole="semibold",
LayoutOrder=D,
ZIndex=12,
},y)

F.MouseButton1Click:Connect(function()
q=E
u.Text=tostring(E)
paintOptions()
C(false)
if k.callback then k.callback(E)end
end)
table.insert(A,F)
end
end

buildOptions()

u.MouseButton1Click:Connect(function()
C(not r)
end)

local D={instance=m}
function D.Set(E,F,G)
if table.find(p,F)then
q=F
u.Text=tostring(F)
if G~=false and k.callback then k.callback(F)end
end
end

function D.Get(E)return q end

function D.Refresh(E,F)
p=F or{}
if not table.find(p,q)then
q=p[1]
u.Text=tostring(q or"Seleccionar")
end
buildOptions()
if r then C(true)end
end

m.Destroying:Connect(function()
disconnectOutside()
raiseAncestors(false)
end)


d.onChange(function()
v.ImageColor3=h.textMuted
paintOptions()
end,m)

return D
end end function a.n():typeof(__modImpl())local b=a.cache.n if not b then b={c=__modImpl()}a.cache.n=b end return b.c end end do local function __modImpl()

local b=game:GetService"UserInputService"

local c=a.b()
local d=a.g()
local e=a.i()
local f=a.e()

local g=c.palette











return function(h,i)
i=i or{}
local j=i.description or i.desc or""local

k, l, m=e.row(h,{
title=i.title,
description=j~=""and j or nil,

color=i.color~=nil and f.soften(i.color)or nil,
order=i.order,
border=i.border,
},{height=44,controlWidth=100,controlHeight=26,compact=i.compact})

local n=i.default
local o=false

local p=d.button({
Size=UDim2.new(1,0,1,0),
BackgroundColor3=g.black,
Text=n and n.Name or"None",
TextSize=11,
FontRole="bold",
},m)


c.bind(p,"TextColor3","text")

local function resetBtn()
p.Text=n and n.Name or"None"
p.BackgroundColor3=g.black
end

local q={}

q[#q+1]=p.MouseButton1Click:Connect(function()
o=true
p.Text="..."
p.BackgroundColor3=g.primary
end)

q[#q+1]=b.InputBegan:Connect(function(r,s)
if o then
if r.KeyCode==Enum.KeyCode.Escape then
o=false
elseif r.KeyCode~=Enum.KeyCode.Unknown then
n=r.KeyCode
o=false
if i.onChanged then i.onChanged(n)end
end
resetBtn()
return
end
if not s and n and r.KeyCode==n then
if i.callback then i.callback()end
end
end)


e.autoCleanup(k,q)

local r={instance=k}
function r.Set(s,t)
n=t
p.Text=n and n.Name or"None"
end
function r.Get(s)return n end



c.onChange(function()
if not o then
p.BackgroundColor3=g.black
else
p.BackgroundColor3=g.primary
end
end,k)

return r
end end function a.o():typeof(__modImpl())local b=a.cache.o if not b then b={c=__modImpl()}a.cache.o=b end return b.c end end do local function __modImpl()

local b=a.b()
local c=a.g()
local d=a.c()

local e=game:GetService"TweenService"

local f=b.palette

local function normalizeConfig(g)
if type(g)=="string"then
g={title=g}
end

g=g or{}
g.title=g.title or g.Title or g.name or"Section"
g.description=g.description or g.Desc or g.desc or""
g.icon=g.icon or g.Icon or""

g._customIconColor=g.iconColor~=nil or g.IconColor~=nil
g.iconColor=g.iconColor or g.IconColor or f.text
g.textSize=g.textSize or g.TextSize or 13
g.textXAlignment=g.textXAlignment or g.TextXAlignment or"Left"
g.box=g.box~=nil and g.box or(g.Box~=nil and g.Box or false)
g.boxBorder=g.boxBorder~=nil and g.boxBorder or(g.BoxBorder~=nil and g.BoxBorder or false)

if g.opened==nil then
g.opened=g.Opened
end
if g.opened==nil then
g.opened=g.open
end
if g.opened==nil then
g.opened=true
end
g.open=g.open~=nil and g.open or g.opened

g.fontWeight=g.fontWeight or g.FontWeight or Enum.FontWeight.SemiBold
g.descFontWeight=g.descFontWeight or g.DescFontWeight or Enum.FontWeight.Medium
g.textTransparency=g.textTransparency or g.TextTransparency or 0
g.descTextTransparency=g.descTextTransparency or g.DescTextTransparency or 0.4

return g
end

local function resolveAlign(g)
local h=string.lower(tostring(g or"Left"))
if h=="center"then return Enum.TextXAlignment.Center end
if h=="right"then return Enum.TextXAlignment.Right end
return Enum.TextXAlignment.Left
end

return function(g,h)
h=normalizeConfig(h)
local i=h.opened~=false

local j=c.create("Frame",{
Name=h.title or"Section",
Size=UDim2.new(1,0,0,0),
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
BorderSizePixel=0,
LayoutOrder=h.order or 0,
},g)

c.create("UIListLayout",{
Padding=UDim.new(0,2),
SortOrder=Enum.SortOrder.LayoutOrder,
},j)

local k=c.create("Frame",{
Name="Shell",
Size=UDim2.new(1,0,0,0),
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=h.box and 0 or 1,
BackgroundColor3=h.box and f.surface2 or f.surface,
BorderSizePixel=0,
CornerRadius=UDim.new(0,12),
},j)


local l=h.box==true
if l then
b.bind(k,"BackgroundColor3","surface2")
end



local m=h.border==true or(h.box and h.boxBorder)

c.create("UIPadding",{
PaddingTop=UDim.new(0,6),
PaddingBottom=UDim.new(0,8),
PaddingLeft=UDim.new(0,0),
PaddingRight=UDim.new(0,0),
},k)

if m then
local n=c.create("UIStroke",{
Color=f.border,
Thickness=1,
Transparency=0.2,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
},k)
b.bind(n,"Color","border")
end

c.create("UIListLayout",{
Padding=UDim.new(0,8),
SortOrder=Enum.SortOrder.LayoutOrder,
},k)

local n=c.create("TextButton",{
Name="Header",

Size=UDim2.new(1,0,0,h.description and h.description~=""and 43 or 29),
BackgroundTransparency=1,
BorderSizePixel=0,
Text="",
AutoButtonColor=false,
TextXAlignment=Enum.TextXAlignment.Left,
},k)

n.MouseEnter:Connect(function()
if l then
n.BackgroundColor3=f.surface2:Lerp(f.white,0.04)
end
end)
n.MouseLeave:Connect(function()
if l then
n.BackgroundColor3=f.surface2
end
end)

local o=c.create("TextLabel",{
BackgroundTransparency=1,
Position=UDim2.new(0,h.icon and h.icon~=""and 30 or 12,0,h.description and h.description~=""and 3 or 6),
Size=UDim2.new(1,h.icon and h.icon~=""and-38 or-20,0,17),
Text=h.title or"",
TextColor3=f.text,
TextTransparency=h.textTransparency,
FontRole=h.fontRole or"body",
TextSize=math.max(12,(h.textSize or 13)),
TextXAlignment=resolveAlign(h.textXAlignment),
TextYAlignment=Enum.TextYAlignment.Center,
},n)

if h.fontWeight then

d.apply(o,h.fontRole or"title",h.fontWeight)
end

local p
if h.icon and h.icon~=""then
p=c.icon(h.icon,14,{
Position=UDim2.new(0,10,0.5,-7),
ImageColor3=h.iconColor,
},n)
end

local q
if h.description and h.description~=""then
q=c.create("TextLabel",{
BackgroundTransparency=1,
Position=UDim2.new(0,h.icon and h.icon~=""and 30 or 12,0,22),
Size=UDim2.new(1,h.icon and h.icon~=""and-38 or-20,0,14),
Text=tostring(h.description),
TextColor3=f.textMuted,
TextTransparency=h.descTextTransparency,
FontRole=h.descFontRole or"body",
TextSize=11,
TextXAlignment=resolveAlign(h.textXAlignment),
TextYAlignment=Enum.TextYAlignment.Center,
},n)
b.bind(q,"TextColor3","textMuted")
end




local r="chevron-down"

local s=c.icon(r,14,{
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(1,-19,0.5,0),
ImageColor3=f.textMuted,
Rotation=i and-180 or 0,
},n)
b.bind(s,"ImageColor3","textMuted")



local t=c.create("Frame",{
Position=UDim2.new(0,10,1,-1),
Size=UDim2.new(1,-50,0,1),
BackgroundColor3=f.gray,
BackgroundTransparency=0.7,
BorderSizePixel=0,
},n)
b.bind(t,"BackgroundColor3","gray")
b.bind(o,"TextColor3","text")



o.Size=UDim2.new(1,h.icon and h.icon~=""and-70 or-52,0,17)
if q then
q.Size=UDim2.new(1,h.icon and h.icon~=""and-70 or-52,0,14)
end

local u=c.create("Frame",{
Name="Content",
Size=UDim2.new(1,0,0,0),
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
BorderSizePixel=0,
Visible=i,
},k)

c.create("UIListLayout",{
Padding=UDim.new(0,8),
SortOrder=Enum.SortOrder.LayoutOrder,
},u)






if l or m then
c.create("UIPadding",{
PaddingLeft=UDim.new(0,12),
PaddingRight=UDim.new(0,12),
},u)
end


local v
local w=TweenInfo.new(
0.2,
Enum.EasingStyle.Quad,
Enum.EasingDirection.Out
)

local function animateChevron(x)
if v then
v:Cancel()
v=nil
end
v=e:Create(
s,
w,
{Rotation=x and-180 or 0}
)
v:Play()
end

local function setExpanded(x)
i=x
u.Visible=x


if x then
u.Size=UDim2.new(1,0,0,0)
end

animateChevron(x)
end

n.MouseButton1Click:Connect(function()
setExpanded(not i)
end)


b.onChange(function()
if p and not h._customIconColor then
p.ImageColor3=f.text
end
end,j)

local x={
instance=j,
frame=k,
header=n,
content=u,
chevron=s,
SetExpanded=setExpanded,
}

return x
end end function a.p():typeof(__modImpl())local b=a.cache.p if not b then b={c=__modImpl()}a.cache.p=b end return b.c end end do local function __modImpl()















local b=a.b()
local c=a.g()
local d=a.i()

local e=b.palette

return function(f,g)
g=g or{}


local h=g.controlWidth or 160
local i=g.controlHeight or 28


local j=g.radius
if j==nil then
j=g.round==false and UDim.new(0,8)or UDim.new(1,0)
elseif type(j)=="number"then
j=UDim.new(0,j)
end local

k, l, m=d.row(f,g,{
controlWidth=h,
controlHeight=i,
compact=g.compact,
})


local n=math.floor(i*j.Scale+j.Offset)
local o=math.max(10,math.min(n,math.floor(i/2)))

local p=c.create("TextBox",{
Name=g.name or"Input",
Size=UDim2.new(1,0,1,0),
Text=g.default or"",
PlaceholderText=g.placeholder or"",
ClearTextOnFocus=false,
FontRole="body",
TextSize=12,
TextColor3=e.text,
TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Center,
BackgroundColor3=e.surface,
BackgroundTransparency=0.12,
BorderSizePixel=0,
ClipsDescendants=true,
CornerRadius=j,
Padding={Left=o,Right=o},
},m)

b.bind(p,"TextColor3","text")
b.bind(p,"BackgroundColor3","surface")
b.bind(p,"PlaceholderColor3","textMuted")

local q={instance=k}

function q.Get(r)
return p.Text
end

function q.Set(r,s)
p.Text=tostring(s or"")
end

function q.OnChanged(r,s)
if type(s)~="function"then return end
p.FocusLost:Connect(function(t)
pcall(s,p.Text,t)
end)
end

if g.callback and type(g.callback)=="function"then
q:OnChanged(g.callback)
end

return q
end end function a.q():typeof(__modImpl())local b=a.cache.q if not b then b={c=__modImpl()}a.cache.q=b end return b.c end end do local function __modImpl()

















local b=game:GetService"UserInputService"
local c=game:GetService"TweenService"

local d=a.b()
local e=a.g()
local f=a.i()
local g=a.e()

local h=d.palette





local function toInt(i)
return math.floor(i+0.5)
end

local function colorToHsv(i)
local j,k,l=i:ToHSV()
return j*360,k*255,l*255
end

local function toHex(i)
return string.format("#%02x%02x%02x",
toInt(i.R*255),toInt(i.G*255),toInt(i.B*255))
end

local function fromHex(i)
if type(i)~="string"then return nil end
i=i:gsub("^%s*#",""):gsub("%s+","")
local j,k,l=i:match"^(%x%x)(%x%x)(%x%x)$"
if not j then return nil end
return Color3.fromRGB(tonumber(j,16),tonumber(k,16),tonumber(l,16))
end



local function pointInGui(i,j,k)
if not i or not i.Visible then return false end
local l=i.AbsolutePosition
local m=i.AbsoluteSize
return j>=l.X and j<=l.X+m.X
and k>=l.Y and k<=l.Y+m.Y
end



local i=ColorSequence.new{
ColorSequenceKeypoint.new(0.000,Color3.fromRGB(255,0,0)),
ColorSequenceKeypoint.new(0.167,Color3.fromRGB(255,0,255)),
ColorSequenceKeypoint.new(0.333,Color3.fromRGB(0,0,255)),
ColorSequenceKeypoint.new(0.500,Color3.fromRGB(0,255,255)),
ColorSequenceKeypoint.new(0.667,Color3.fromRGB(0,255,0)),
ColorSequenceKeypoint.new(0.833,Color3.fromRGB(255,255,0)),
ColorSequenceKeypoint.new(1.000,Color3.fromRGB(255,0,0)),
}

return function(j,k)
k=k or{}
local l=k.description or k.desc or""local

m, n, o=f.row(j,{
title=k.title,
description=l~=""and l or nil,
color=k.color~=nil and g.soften(k.color)or nil,
order=k.order,
border=k.border,
},{height=44,controlWidth=140,controlHeight=26,compact=k.compact})






local p=typeof(k.default)=="Color3"and k.default or h.primary

local q={h=0,s=0,v=0}
local r
local s
local t={}
local u={}

local v,w

local function hsvColor()
return Color3.fromHSV(q.h/360,q.s/255,q.v/255)
end




local function syncFromColor(x,y)
local z,A,B=colorToHsv(x)
if y and A<0.002 then
q.s,q.v=A,B
else
q.h,q.s,q.v=z,A,B
end
end





local x=e.button({
Size=UDim2.new(1,0,1,0),
BackgroundColor3=h.black,
Text="",
ZIndex=1,
},o)
d.bind(x,"BackgroundColor3","black")
d.bind(x,"TextColor3","text")


local y=e.create("Frame",{
Position=UDim2.new(0,8,0.5,-9),
Size=UDim2.new(0,18,0,18),
BackgroundColor3=p,
BorderSizePixel=0,
CornerRadius=UDim.new(0,5),
ZIndex=2,
},x)

local z=e.create("UIStroke",{
Color=h.white,
Thickness=1,
Transparency=0.7,
},y)
d.bind(z,"Color","white")

local A=e.create("TextLabel",{
BackgroundTransparency=1,
Position=UDim2.new(0,32,0,0),
Size=UDim2.new(1,-40,1,0),
FontRole="bold",
Text="",
TextColor3=h.text,
TextSize=12,
TextXAlignment=Enum.TextXAlignment.Left,
ZIndex=2,
},x)
d.bind(A,"TextColor3","text")

function v()
y.BackgroundColor3=p
A.Text=toHex(p)
end
v()





local function setHSV(B,C,D)
q.h=math.clamp(B,0,360)
q.s=math.clamp(C,0,255)
q.v=math.clamp(D,0,255)
w()
end

local function setColor(B,C)
if typeof(B)~="Color3"then return end
syncFromColor(B,C)
w()
end


local function setSpinnerText(B,C)
if B and b:GetFocusedTextBox()~=B then
B.Text=tostring(C)
end
end

function w()
if not r then return end
local B=hsvColor()


u.dim.BackgroundTransparency=math.clamp(q.v/255,0,1)
u.sat.BackgroundColor3=Color3.new(q.v/255,q.v/255,q.v/255)


u.svMarker.Position=UDim2.new(1-q.h/360,0,1-q.s/255,0)
u.valMarker.Position=UDim2.new(0,-6,1-q.v/255,0)


u.preview.BackgroundColor3=B


setSpinnerText(u.hueBox,toInt(q.h))
setSpinnerText(u.satBox,toInt(q.s))
setSpinnerText(u.valBox,toInt(q.v))
setSpinnerText(u.rBox,toInt(B.R*255))
setSpinnerText(u.gBox,toInt(B.G*255))
setSpinnerText(u.bBox,toInt(B.B*255))
if u.hexBox then
setSpinnerText(u.hexBox,toHex(B))
end
end


local function bindDrag(B,C)
local D=false
local E

B.InputBegan:Connect(function(F)
if D then return end
if F.UserInputType~=Enum.UserInputType.MouseButton1
and F.UserInputType~=Enum.UserInputType.Touch then
return
end

D=true
E=F
C(F.Position.X,F.Position.Y)

local G
G=b.InputChanged:Connect(function(H)
if H==E
or(H.UserInputType==Enum.UserInputType.MouseMovement
and E.UserInputType==Enum.UserInputType.MouseButton1)then
C(H.Position.X,H.Position.Y)
end
end)

local H
local function cleanup()
G:Disconnect()
H:Disconnect()
for I=#t,1,-1 do
if t[I]==G or t[I]==H then
table.remove(t,I)
end
end
end

H=b.InputEnded:Connect(function(I)
if I.UserInputType==Enum.UserInputType.MouseButton1
or I.UserInputType==Enum.UserInputType.Touch then
cleanup()
D=false
E=nil
end
end)

t[#t+1]=G
t[#t+1]=H
end)
end





local function closePopup(B,C)
if not r then return end
local D=r.blocker
local E=r.card

r=nil
if s then
s:Disconnect()
s=nil
end
for F=#t,1,-1 do
pcall(function()
t[F]:Disconnect()
end)
end
table.clear(t)

if B then
p=hsvColor()
v()
if k.callback then
task.spawn(k.callback,p)
end
end

local function destroy()
if D and D.Parent then
D:Destroy()
end
end

if C then
destroy()
return
end


local F=c:Create(E,
TweenInfo.new(0.15,Enum.EasingStyle.Quad,Enum.EasingDirection.In),
{Size=UDim2.new(0,276,0,296)})
F:Play()
F.Completed:Connect(destroy)
end

local function openPopup()
if r then return end
local B=m:FindFirstAncestorOfClass"ScreenGui"
if not B then return end

syncFromColor(p,false)


local C=e.create("TextButton",{
Name="ColorPickerBlocker",
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
Text="",
AutoButtonColor=false,
Active=true,
ZIndex=200,
},B)

local D=e.create("Frame",{
Name="ColorPicker",
Size=UDim2.new(0,276,0,296),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundColor3=h.surface,
BorderSizePixel=0,
ZIndex=201,
CornerRadius=UDim.new(0,14),
Stroke={Color=h.border,Thickness=1,Transparency=0.5},
},C)
d.bind(D,"BackgroundColor3","surface")
local E=D:FindFirstChildOfClass"UIStroke"
if E then
d.bind(E,"Color","border")
end

r={blocker=C,card=D}


local F=e.create("Frame",{
Position=UDim2.new(0,16,0,16),
Size=UDim2.new(0,236,0,150),
BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0,
CornerRadius=UDim.new(0,8),
ZIndex=202,
},D)
e.create("UIGradient",{Color=i},F)


local G=e.create("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundColor3=Color3.new(0,0,0),
BackgroundTransparency=1,
BorderSizePixel=0,
ZIndex=203,
},F)


local H=e.create("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundColor3=Color3.new(0,0,0),
BorderSizePixel=0,
ZIndex=204,
},F)
e.create("UIGradient",{
Rotation=90,
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(1,0),
},
},H)


local I=e.create("Frame",{
AnchorPoint=Vector2.new(0.5,0.5),
Size=UDim2.new(0,16,0,16),
BackgroundTransparency=1,
BorderSizePixel=0,
ZIndex=205,
},F)
e.create("UIStroke",{
Color=Color3.new(0,0,0),
Thickness=2,
Transparency=0.4,
CornerRadius=UDim.new(1,0),
},I)
local J=e.create("Frame",{
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
Size=UDim2.new(0,8,0,8),
BackgroundTransparency=1,
BorderSizePixel=0,
ZIndex=206,
},I)
e.create("UIStroke",{
Color=Color3.new(1,1,1),
Thickness=2,
CornerRadius=UDim.new(1,0),
},J)


local K=e.create("Frame",{
Position=UDim2.new(0,260,0,16),
Size=UDim2.new(0,16,0,150),
BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0,
CornerRadius=UDim.new(0,8),
ZIndex=202,
},D)
e.create("UIGradient",{
Rotation=90,
Color=ColorSequence.new(Color3.new(1,1,1),Color3.new(0,0,0)),
},K)


local L=e.icon("chevron-left",12,{
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(0,-6,0,0),
ImageColor3=h.white,
ZIndex=205,
},K)
d.bind(L,"ImageColor3","white")


local M=e.create("Frame",{
Position=UDim2.new(0,16,0,178),
Size=UDim2.new(0,72,0,56),
BorderSizePixel=0,
CornerRadius=UDim.new(0,8),
ZIndex=202,
},D)
local N=e.create("UIStroke",{
Color=h.border,
Thickness=1,
Transparency=0.5,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
},M)
d.bind(N,"Color","border")


local function makeSpinner(O,P,Q,R,S,T,U,V,W)
local X=e.create("Frame",{
Position=UDim2.new(0,O,0,P),
Size=UDim2.new(0,Q,0,20),
BackgroundTransparency=1,
ZIndex=202,
},D)

local Y=e.label({
Size=UDim2.new(0,S,1,0),
Text=R,
TextColor3=h.textMuted,
TextSize=11,
ZIndex=203,
},X)
d.bind(Y,"TextColor3","textMuted")

local Z=e.textBox({
Position=UDim2.new(0,S+2,0,0),
Size=UDim2.new(0,Q-S-16,1,0),
Text="",
TextSize=11,
FontRole="bold",
CornerRadius=UDim.new(0,4),
Padding={Left=6,Right=4},
ZIndex=203,
},X)
d.bind(Z,"BackgroundColor3","black")
d.bind(Z,"TextColor3","text")

local _=e.imageButton({
AnchorPoint=Vector2.new(1,0),
Position=UDim2.new(1,-1,0,1),
Size=UDim2.new(0,12,0,9),
BackgroundTransparency=1,
Image=g.getIcon"chevron-up",
ImageColor3=h.textMuted,
ZIndex=204,
},X)
d.bind(_,"ImageColor3","textMuted")

local aa=e.imageButton({
AnchorPoint=Vector2.new(1,0),
Position=UDim2.new(1,-1,0,10),
Size=UDim2.new(0,12,0,9),
BackgroundTransparency=1,
Image=g.getIcon"chevron-down",
ImageColor3=h.textMuted,
ZIndex=204,
},X)
d.bind(aa,"ImageColor3","textMuted")

_.MouseButton1Click:Connect(function()
W(math.clamp(V()+1,T,U))
end)
aa.MouseButton1Click:Connect(function()
W(math.clamp(V()-1,T,U))
end)

Z.FocusLost:Connect(function()
local ab=tonumber(Z.Text)
if ab then
W(math.clamp(ab,T,U))
else
w()
end
end)

return Z
end


local function rgbGet(aa)
return function()
local ab=hsvColor()
return toInt(ab[aa]*255)
end
end

local function rgbSet(aa)
return function(ab)
local O=hsvColor()
local P,Q,R=toInt(O.R*255),toInt(O.G*255),toInt(O.B*255)
if aa=="R"then
P=ab
elseif aa=="G"then
Q=ab
else
R=ab
end
setColor(Color3.fromRGB(P,Q,R),true)
end
end

local aa=makeSpinner(96,176,88,"Hue",28,0,360,
function()return toInt(q.h)end,
function(aa)setHSV(aa,q.s,q.v)end)
local ab=makeSpinner(96,198,88,"Sat",28,0,255,
function()return toInt(q.s)end,
function(ab)setHSV(q.h,ab,q.v)end)
local O=makeSpinner(96,220,88,"Val",28,0,255,
function()return toInt(q.v)end,
function(O)setHSV(q.h,q.s,O)end)

local P=makeSpinner(190,176,90,"Red",34,0,255,rgbGet"R",rgbSet"R")
local Q=makeSpinner(190,198,90,"Green",34,0,255,rgbGet"G",rgbSet"G")
local R=makeSpinner(190,220,90,"Blue",34,0,255,rgbGet"B",rgbSet"B")


local S=e.label({
Position=UDim2.new(0,96,0,246),
Size=UDim2.new(0,28,0,20),
Text="Hex",
TextColor3=h.textMuted,
TextSize=11,
ZIndex=203,
},D)
d.bind(S,"TextColor3","textMuted")

local T=e.textBox({
Position=UDim2.new(0,126,0,246),
Size=UDim2.new(0,154,0,20),
Text="",
TextSize=11,
FontRole="bold",
CornerRadius=UDim.new(0,4),
Padding={Left=6,Right=6},
ZIndex=203,
},D)
d.bind(T,"BackgroundColor3","black")
d.bind(T,"TextColor3","text")

T.FocusLost:Connect(function()
local U=fromHex(T.Text)
if U then
setColor(U,true)
else
w()
end
end)


local U=e.button({
Position=UDim2.new(0,96,0,274),
Size=UDim2.new(0,90,0,30),
Text="OK",
TextSize=12,
FontRole="bold",
ZIndex=202,
},D)
d.bind(U,"BackgroundColor3","primary")
d.bind(U,"TextColor3","white")

local V=e.button({
Position=UDim2.new(0,190,0,274),
Size=UDim2.new(0,90,0,30),
Text="Cancel",
TextSize=12,
FontRole="bold",
BackgroundColor3=h.surface2,
ZIndex=202,
},D)
d.bind(V,"BackgroundColor3","surface2")
d.bind(V,"TextColor3","text")

u={
dim=G,
sat=H,
svMarker=I,
valMarker=L,
preview=M,
hueBox=aa,
satBox=ab,
valBox=O,
rBox=P,
gBox=Q,
bBox=R,
hexBox=T,
}



bindDrag(F,function(W,X)
local Y=math.clamp((W-F.AbsolutePosition.X)/math.max(F.AbsoluteSize.X,1),0,1)
local Z=math.clamp((X-F.AbsolutePosition.Y)/math.max(F.AbsoluteSize.Y,1),0,1)
setHSV(360*(1-Y),255*(1-Z),q.v)
end)


bindDrag(K,function(W,X)
local Y=math.clamp((X-K.AbsolutePosition.Y)/math.max(K.AbsoluteSize.Y,1),0,1)
setHSV(q.h,q.s,255*(1-Y))
end)

U.MouseButton1Click:Connect(function()
closePopup(true)
end)
V.MouseButton1Click:Connect(function()
closePopup(false)
end)




C.InputBegan:Connect(function(W)
if W.UserInputType~=Enum.UserInputType.MouseButton1
and W.UserInputType~=Enum.UserInputType.Touch then
return
end
local X,Y=W.Position.X,W.Position.Y
if pointInGui(D,X,Y)then return end
closePopup(false)
end)


s=b.InputBegan:Connect(function(W)
if W.KeyCode==Enum.KeyCode.Escape then
closePopup(false)
end
end)


w()
c:Create(D,
TweenInfo.new(0.22,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
{Size=UDim2.new(0,296,0,320)}):Play()
end





x.MouseButton1Click:Connect(openPopup)



m.Destroying:Connect(function()
closePopup(false,true)
end)





local aa={instance=m}
function aa.Set(ab,B,C)
if typeof(B)~="Color3"then return end
p=B
v()
if r then
syncFromColor(p,true)
w()
end
if C~=false and k.callback then
k.callback(p)
end
end

function aa.Get(ab)
return p
end

return aa
end end function a.r():typeof(__modImpl())local aa=a.cache.r if not aa then aa={c=__modImpl()}a.cache.r=aa end return aa.c end end do local function __modImpl()



























local aa=a.b()
local ab=a.g()
local b=a.i()
local c=a.e()
local d=game:GetService"TweenService"
local e=game:GetService"UserInputService"
local f=game:GetService"GuiService"
local g=game:GetService"Players"

local h=aa.palette



local i={
{88,48},
{100,56},
{112,64},
{124,70},
{136,76},
}
local j=4
local k=10



local l=4
local m=8
local n=8
local o=4
local p=8


local q={
AvatarHeadShot={48,60,100,150,180,352,420},
AvatarBust={48,60,100,150,180,352,420},
AvatarThumbnail={48,60,100,150,180,352,420},
Asset={150,420,700},
BundleThumbnail={150,180,420},
GameIcon={50,100,150},
GroupIcon={50,100,150,420},
BadgeIcon={150},
}

local r={
user="AvatarHeadShot",
player="AvatarHeadShot",
head="AvatarHeadShot",
bust="AvatarBust",
avatar="AvatarThumbnail",
full="AvatarThumbnail",
asset="Asset",
catalog="Asset",
item="Asset",
bundle="BundleThumbnail",
game="GameIcon",
group="GroupIcon",
badge="BadgeIcon",
}


local function pickThumbSize(s,t)
local u=q[s]or q.Asset
local v=math.clamp(math.floor(t or 150),1,420)
for w,x in ipairs(u)do
if x>=v then
return x
end
end
return u[#u]
end

local function rbxthumb(s,t,u)
return string.format(
"rbxthumb://type=%s&id=%d&w=%d&h=%d",
s,t,pickThumbSize(s,u),pickThumbSize(s,u)
)
end

local function resolveUserId(s)
local t=tonumber(s)
if t then
return t
end

local u=g:FindFirstChild(s)
if u then
return u.UserId
end
return nil
end




local function resolveImage(s,t,u)
if type(s)=="table"then

local v=tostring(s.type or"asset"):lower()
local w=r[v]or r.asset
local x=tonumber(s.id or s.userId or s.assetId)
if x then
return rbxthumb(w,x,u)
end
s=s.icon or s.image
end

if type(s)=="number"then
return"rbxassetid://"..tostring(s)
end

if type(s)=="string"then
if s:sub(1,11)=="rbxassetid://"
or s:sub(1,10)=="rbxasset://"
or s:sub(1,11)=="rbxthumb://"then
return s
end


local v,w=s:match"^(%a+):%s*(.+)$"
if v and w then
local x=r[v:lower()]
if x then
local y=resolveUserId(w)
if y then
return rbxthumb(x,y,u)
end
warn("[RevUI] Card: no se resolvió el thumbnail '"..s.."'")
return""
end
end

local x=c.getIcon(s)
if x~=""then
return x
end
end

return c.getIcon(t or"image")
end

return function(s,t)
t=t or{}

local u={
size=math.clamp(math.floor(tonumber(t.size)or 3),1,5),
title=t.title or t.Title or"Title",
subtitle=t.subtitle or t.Subtitle or t.description or t.desc or"",
icon=t.icon,
buttons=t.buttons or{},
border=t.border==true,
}

if#u.buttons>j then
error("[RevUI] Card: máximo 4 botones (recibidos "..#u.buttons..").",2)
end


local function layoutMetrics()
local v=i[u.size][1]
local w=math.min(#u.buttons,j)
local x=(w>0)and math.ceil(w/2)or 0


if x==0 then
return 0,0,v,v
end

local y=x==1
and math.clamp(math.floor(v*0.34),26,46)
or math.clamp(math.floor(v*0.28),24,42)
local z=i[u.size][2]+12
local A=z+m+x*y+(x-1)*l+n
return x,y,z,A
end local

v, w, x, y=layoutMetrics()
local z=i[u.size][2]




local A=ab.frame({
Name="Card:"..u.title,
Size=UDim2.new(1,0,0,y),
BackgroundColor3=h.surface2,
CornerRadius=UDim.new(0,10),
LayoutOrder=t.order or 0,
ClipsDescendants=true,
},s)
aa.bind(A,"BackgroundColor3","surface2")

local B

if u.border then
B=ab.create("UIStroke",{
Color=h.border,
Thickness=1,
Transparency=0.4,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
},A)
aa.bind(B,"Color","border")
end


local C={
{{0,0,2}},
{{0,0,1},{1,0,1}},
{{0,0,1},{1,0,1},{0,1,2}},
{{0,0,1},{1,0,1},{0,1,1},{1,1,1}},
}



local D
local E
local F
local G={}

local function raiseCardAncestors(H)
if H then
G={}
local I=F
while I and I.Parent and not I:IsA"ScreenGui"do
G[I]=I.ZIndex
I.ZIndex=1000
I=I.Parent
end
else
for I,J in pairs(G)do
pcall(function()
if I.Parent then I.ZIndex=J end
end)
end
G={}
end
end

local function closeDropdown()
if D and D.Parent then
D:Destroy()
end
D=nil
if E then
E:Disconnect()
E=nil
end
F=nil
raiseCardAncestors(false)
A.ClipsDescendants=true
end

local function openDropdown(H,I,J)
closeDropdown()
F=H
A.ClipsDescendants=false
H.ClipsDescendants=false
raiseCardAncestors(true)


local K={}
for L,M in ipairs(I.options or{})do
if type(M)=="table"then
table.insert(K,{
title=tostring(M.title or M.text or M.label or""),
icon=M.icon,
})
else
table.insert(K,{title=tostring(M)})
end
end

local L=math.min(#K*26+8,150)
D=ab.create("Frame",{
Name="CardDropdownList",
Position=UDim2.new(0,0,1,4),
Size=UDim2.new(1,0,0,0),
BackgroundColor3=h.surface,
BorderSizePixel=0,
CornerRadius=UDim.new(0,8),
ClipsDescendants=true,
ZIndex=1000,
Active=true,
},H)
aa.bind(D,"BackgroundColor3","surface")

local M=ab.create("UIStroke",{
Color=h.surface2,
Thickness=1,
},D)
aa.bind(M,"Color","surface2")

local N=ab.create("ScrollingFrame",{
Position=UDim2.new(0,2,0,2),
Size=UDim2.new(1,-4,1,-4),
BackgroundTransparency=1,
BorderSizePixel=0,
ScrollBarThickness=3,
ScrollBarImageColor3=h.primary,
AutomaticCanvasSize=Enum.AutomaticSize.Y,
CanvasSize=UDim2.new(0,0,0,0),
ZIndex=1001,
},D)

ab.create("UIListLayout",{
SortOrder=Enum.SortOrder.LayoutOrder,
Padding=UDim.new(0,2),
},N)

for O,P in ipairs(K)do
local Q=ab.button({
Size=UDim2.new(1,-4,0,24),
BackgroundColor3=h.surface2,
Text="",
AutoButtonColor=false,
CornerRadius=UDim.new(0,6),
LayoutOrder=O,
ZIndex=1002,
ClipsDescendants=true,
},N)
aa.bind(Q,"BackgroundColor3","surface2")

if P.icon then
ab.icon(P.icon,14,{
AnchorPoint=Vector2.new(0,0.5),
Position=UDim2.new(0,7,0.5,0),
ImageColor3=h.textMuted,
ZIndex=1003,
},Q)
end

local R=ab.create("TextLabel",{

Position=UDim2.new(0,P.icon and 27 or 9,0,0),
Size=UDim2.new(1,P.icon and-33 or-15,1,0),
BackgroundTransparency=1,
Text=P.title,
FontRole="semibold",
TextSize=12,
TextColor3=h.text,
TextXAlignment=Enum.TextXAlignment.Left,
TextTruncate=Enum.TextTruncate.AtEnd,
ZIndex=1003,
},Q)
aa.bind(R,"TextColor3","text")

Q.MouseEnter:Connect(function()
Q.BackgroundColor3=h.primary
end)
Q.MouseLeave:Connect(function()
Q.BackgroundColor3=h.surface2
end)

Q.MouseButton1Click:Connect(function()
J(P.title,P)
closeDropdown()
if I.callback then
I.callback(P.title,P)
end
end)
end


E=e.InputBegan:Connect(function(O)
if O.UserInputType==Enum.UserInputType.MouseButton1
or O.UserInputType==Enum.UserInputType.Touch then
task.defer(function()
if not D or not D.Parent then
return
end
local P=e:GetMouseLocation()
local Q=f:GetGuiInset()
local R,S=P.X,P.Y-Q.Y
local T,U=D.AbsolutePosition,D.AbsoluteSize
if R<T.X or R>T.X+U.X or S<T.Y or S>T.Y+U.Y then
closeDropdown()
end
end)
end
end)


d:Create(D,
TweenInfo.new(0.18,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{Size=UDim2.new(1,0,0,L)}
):Play()
end

local H
local I
local J
local K
local L

local function renderThumb()
if H and H.Parent then
H:Destroy()
end

local M=u.icon~=nil and u.icon~=""local
N, O, P=layoutMetrics()
H=ab.frame({

Position=UDim2.new(0,k,0,math.floor((P-z)/2)),
Size=UDim2.new(0,z,0,z),
BackgroundColor3=h.surface,
CornerRadius=UDim.new(0,8),
BorderSizePixel=0,
ClipsDescendants=true,
},A)
aa.bind(H,"BackgroundColor3","surface")

if M then
ab.imageLabel({
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
Image=resolveImage(u.icon,"image",z),
ImageColor3=h.white,
ScaleType=Enum.ScaleType.Fit,
},H)
else
ab.icon("image",math.floor(z*0.4),{
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
ImageColor3=h.textMuted,
},H)
end
end

local function renderText()
if I and I.Parent then
I:Destroy()
end

local M=u.size
local O=math.max(12,11+M)
local P=math.max(9,9+M)local

Q, R, S=layoutMetrics()



I=ab.create("Frame",{
Position=UDim2.new(0,k+z+10,0,0),
Size=UDim2.new(1,-(k+z+10+k),0,S),
BackgroundTransparency=1,
BorderSizePixel=0,
},A)

local T=tostring(u.subtitle or"")
if T~=""then
J=ab.create("TextLabel",{
Position=UDim2.new(0,0,0,math.floor(S/2)-27),
Size=UDim2.new(1,0,0,22),
BackgroundTransparency=1,
Text=tostring(u.title or"Title"),
FontRole="bold",
TextSize=O,
TextColor3=h.text,
TextXAlignment=Enum.TextXAlignment.Left,
TextTruncate=Enum.TextTruncate.AtEnd,
},I)
aa.bind(J,"TextColor3","text")

K=ab.create("TextLabel",{
Position=UDim2.new(0,0,0,math.floor(S/2)+3),
Size=UDim2.new(1,0,0,16),
BackgroundTransparency=1,
Text=T,
FontRole="body",
TextSize=P,
TextColor3=h.textMuted,
TextXAlignment=Enum.TextXAlignment.Left,
TextTruncate=Enum.TextTruncate.AtEnd,
},I)
aa.bind(K,"TextColor3","textMuted")
else
J=ab.create("TextLabel",{
AnchorPoint=Vector2.new(0,0.5),
Position=UDim2.new(0,0,0.5,0),
Size=UDim2.new(1,0,0,22),
BackgroundTransparency=1,
Text=tostring(u.title or"Title"),
FontRole="bold",
TextSize=O,
TextColor3=h.text,
TextXAlignment=Enum.TextXAlignment.Left,
TextTruncate=Enum.TextTruncate.AtEnd,
},I)
aa.bind(J,"TextColor3","text")
K=nil
end
end

local function renderButtons()
closeDropdown()
if L and L.Parent then
L:Destroy()
end

local M,O,P=layoutMetrics()
if M==0 then
return
end

local R=C[math.min(#u.buttons,j)]or C[4]
local S=M*O+(M-1)*l



L=ab.create("Frame",{
Name="CardButtonGrid",
Position=UDim2.new(0,k,0,P+m),
Size=UDim2.new(1,-(k*2),0,S),
BackgroundTransparency=1,
BorderSizePixel=0,
ClipsDescendants=false,
},A)


ab.frame({
Name="ZoneSeparator",
Position=UDim2.new(0,0,0,-math.floor(m/2)-4),
Size=UDim2.new(1,0,0,1),
BackgroundColor3=h.border,
BackgroundTransparency=0.5,
BorderSizePixel=0,
ZIndex=2,
},L)





for T,U in ipairs(u.buttons)do
if T>j then
break
end

local V=R[T]or{0,0,1}
local W,X,Y=V[1],V[2],V[3]

local Z=type(U.dropdown)=="table"
local _
if Z then
_={}
for ac,ad in ipairs(U.dropdown.options or{})do
if type(ad)=="table"then
table.insert(_,{
title=tostring(ad.title or ad.text or ad.label or""),
icon=ad.icon,
})
else
table.insert(_,{title=tostring(ad)})
end
end
end
local ac=Z and tostring(
U.dropdown.selected
or(_[1]and _[1].title)
or"Seleccionar"
)or nil

local ad=U.color~=nil
local ae=ad and c.soften(U.color)or nil
local af=U.textColor or h.text
local ag=U.iconColor or af

local ah=U.icon
if Z and(ah==nil or ah=="")then
ah="chevron-down"
end
local ai=Z and ac
or(U.title or U.text or U.label or"")
local aj=ah~=nil and ah~=""
local ak=ai~=""

local al=ab.button({

Position=UDim2.new(
W==1 and 0.5 or 0,
W==1 and(l/2)or 0,
0,
X==1 and(O+l)or 0
),
Size=Y==2
and UDim2.new(1,0,0,O)
or UDim2.new(0.5,-(l/2),0,O),
Text="",
AutoButtonColor=false,
CornerRadius=UDim.new(0,6),
ClipsDescendants=false,
ZIndex=2,
},L)

if ad then
al.BackgroundColor3=ae
b.hover(al,ae)
else


al.BackgroundColor3=h.surface
aa.bind(al,"BackgroundColor3","surface")

local am=ab.create("UIStroke",{
Color=h.border,
Thickness=1,
Transparency=0.4,
},al)
aa.bind(am,"Color","border")

al.MouseEnter:Connect(function()
al.BackgroundColor3=h.surface2
end)
al.MouseLeave:Connect(function()
al.BackgroundColor3=h.surface
end)
end




local am=p
local an=o
local ao=0
if aj then
ao=math.floor(math.min(O*0.6,26))
if ak then
ao=math.max(10,math.min(ao,24))
end
end
local ap=am+(aj and(ao+an)or 0)

local aq

if aj then
local ar=not ak
ab.imageLabel({
AnchorPoint=ar and Vector2.new(0.5,0.5)or Vector2.new(0,0.5),
Position=ar
and UDim2.new(0.5,0,0.5,0)
or UDim2.new(0,am,0.5,0),
Size=UDim2.new(0,ao,0,ao),
BackgroundTransparency=1,
Image=resolveImage(ah,"circle"),
ImageColor3=ag,
ZIndex=3,
},al)
end

if ak then
aq=ab.create("TextLabel",{
Position=UDim2.new(0,ap,0,0),
Size=UDim2.new(1,-(ap+am),1,0),
BackgroundTransparency=1,
Text=ai,
FontRole="bold",
TextSize=math.max(9,math.floor(O*0.38)),
TextColor3=af,
TextXAlignment=Z
and Enum.TextXAlignment.Left
or Enum.TextXAlignment.Center,
TextYAlignment=Enum.TextYAlignment.Center,
TextTruncate=Enum.TextTruncate.AtEnd,
ZIndex=3,
},al)
end

if Z then


al.MouseButton1Click:Connect(function()
if F==al then
closeDropdown()
return
end
openDropdown(al,U.dropdown,function(ar)
ac=tostring(ar)

U.dropdown.selected=ac
if aq then
aq.Text=ac
end
end)
end)
else
al.MouseButton1Click:Connect(function()
if U.callback then
U.callback()
end
end)
end
end
end

local function refreshCard()
local ac=math.clamp(math.floor(tonumber(u.size)or 3),1,5)
u.size=ac local
ad, ae, af, ag=layoutMetrics()
x=af
y=ag
z=i[ac][2]
A.Size=UDim2.new(1,0,0,y)
A.Name="Card:"..tostring(u.title or"Title")

if B then
B.Visible=u.border==true
end

renderThumb()
renderText()
renderButtons()
end

refreshCard()


A.Destroying:Connect(function()
closeDropdown()
end)

local ac={instance=A}

function ac.SetProp(ae,af,ag)
if type(af)=="table"then
return ac:SetProps(af)
end

local ah=tostring(af)
if ah=="title"or ah=="Title"then
u.title=tostring(ag or"")
elseif ah=="subtitle"or ah=="Subtitle"or ah=="description"or ah=="description"or ah=="desc"then
u.subtitle=tostring(ag or"")
elseif ah=="icon"or ah=="Icon"then
u.icon=ag
elseif ah=="buttons"or ah=="Buttons"then
u.buttons=type(ag)=="table"and ag or{}
if#u.buttons>j then
error("[RevUI] Card: máximo 4 botones (recibidos "..#u.buttons..").",2)
end
elseif ah=="size"or ah=="Size"then
u.size=math.clamp(math.floor(tonumber(ag)or u.size),1,5)
elseif ah=="border"or ah=="Border"then
u.border=ag==true
else
local ai,aj=pcall(function()
A[ah]=ag
end)
if not ai then
warn("[RevUI] Card: propiedad inválida/inalcanzable -> "..ah.." ("..tostring(aj)..")")
end
return ac
end

refreshCard()
return ac
end

function ac.SetProps(ae,af)
af=af or{}
if type(af)~="table"then
return ac
end

for ag,ah in pairs(af)do
ac:SetProp(ag,ah)
end

return ac
end

function ac.Set(ae,af,ag)
if type(af)=="table"then
return ac:SetProps(af)
end
return ac:SetProp(af,ag)
end

function ac.SetTitle(ae,af)
return ac:SetProp("title",af)
end

function ac.SetSubtitle(ae,af)
return ac:SetProp("subtitle",af)
end

function ac.SetIcon(ae,af)
return ac:SetProp("icon",af)
end

function ac.SetButtons(ae,af)
return ac:SetProp("buttons",af)
end

function ac.SetButton(ae,af,ag)
local ah=math.floor(tonumber(af)or 0)
if ah<1 or ah>#u.buttons then
warn("[RevUI] Card:SetButton: índice fuera de rango ("..tostring(ah)..")")
return ac
end
if type(ag)~="table"then
return ac
end

local ai={}
for aj,ak in pairs(u.buttons[ah])do
ai[aj]=ak
end
for aj,ak in pairs(ag)do
ai[aj]=ak
end
u.buttons[ah]=ai

renderButtons()
return ac
end

function ac.GetButton(ae,af)
local ag=math.floor(tonumber(af)or 0)
if ag<1 or ag>#u.buttons then
return nil
end
return u.buttons[ag]
end

function ac.GetButtons(ae)
local af={}
for ag,ah in ipairs(u.buttons)do
af[ag]=ah
end
return af
end

function ac.Get(ae,af)
if af==nil then
return{
title=u.title,
subtitle=u.subtitle,
icon=u.icon,
buttons=u.buttons,
size=u.size,
border=u.border,
}
end

local ag=tostring(af)
if ag=="title"or ag=="Title"then
return u.title
elseif ag=="subtitle"or ag=="Subtitle"or ag=="description"or ag=="desc"then
return u.subtitle
elseif ag=="icon"or ag=="Icon"then
return u.icon
elseif ag=="buttons"or ag=="Buttons"then
return u.buttons
elseif ag=="size"or ag=="Size"then
return u.size
elseif ag=="border"or ag=="Border"then
return u.border
end

return A[ag]
end

return ac
end end function a.s():typeof(__modImpl())local aa=a.cache.s if not aa then aa={c=__modImpl()}a.cache.s=aa end return aa.c end end do local function __modImpl()



























local aa=a.g()



local ab=a.j()
local ac=a.l()
local ae=a.m()
local af=a.n()
local ag=a.o()
local ah=a.q()
local ai=a.r()
local aj=a.k()
local ak=a.s()

local al=3

local am={}
am.__index=am







function am.new(an,ao,ap)
ao=ao or{}

local aq=tonumber(ao.p or ao.padding or ao.gap)or 6
local ar=math.max(1,tonumber(ao.rows or 1)or 1)


local b=math.clamp(math.floor(tonumber(
ao.perRow or ao.cols or ao.columns or ao.per_row
)or al),1,al)

local c=aa.create("Frame",{
Name="Stack",
Size=UDim2.new(1,-2,0,0),
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
BorderSizePixel=0,
LayoutOrder=ao.order or ap or 0,
},an)

aa.create("UIListLayout",{
Padding=UDim.new(0,aq),
SortOrder=Enum.SortOrder.LayoutOrder,
HorizontalAlignment=Enum.HorizontalAlignment.Center,
},c)

local d=setmetatable({
_root=c,
_padding=aq,
_perRow=b,
_rowsUsed=0,
_reservedRows=ar,
_inRow=0,
_currentRow=nil,
_isStack=true,
},am)

function d._newRow(e)
e._rowsUsed+=1
if e._rowsUsed>e._reservedRows then
error("[RevUI] Stack: excediste las filas reservadas (rows = "
..tostring(e._reservedRows).."). Sube `rows` o crea otro stack.",3)
end

local f=aa.create("Frame",{
Name="StackRow"..e._rowsUsed,
Size=UDim2.new(1,0,0,0),
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
BorderSizePixel=0,
LayoutOrder=e._rowsUsed,
},e._root)

aa.create("UIListLayout",{
Padding=UDim.new(0,e._padding),
SortOrder=Enum.SortOrder.LayoutOrder,
FillDirection=Enum.FillDirection.Horizontal,
HorizontalAlignment=Enum.HorizontalAlignment.Center,
VerticalAlignment=Enum.VerticalAlignment.Top,
},f)

e._currentRow=f
e._inRow=0
return f
end


function d._add(e,f,g)
if e._inRow>=e._perRow then
e:_newRow()
end
if not e._currentRow then
e:_newRow()
end

e._inRow+=1



local h=aa.create("Frame",{
Name="StackCell",
Size=UDim2.new(
1/e._perRow,
-((e._perRow-1)*e._padding)/e._perRow,
0,0
),
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
BorderSizePixel=0,
LayoutOrder=e._inRow,
},e._currentRow)

g=g or{}



if g.compact==nil then
g.compact=true
end
return f(h,g)
end




function d.Button(e,f)return e:_add(ab,f)end
function d.Toggle(e,f)return e:_add(ac,f)end
function d.Slider(e,f)return e:_add(ae,f)end
function d.Dropdown(e,f)return e:_add(af,f)end
function d.Keybind(e,f)return e:_add(ag,f)end
function d.Input(e,f)return e:_add(ah,f)end
function d.ColorPicker(e,f)return e:_add(ai,f)end
function d.Card(e,f)return e:_add(ak,f)end

function d.Space(e,f)
f=f or{}
f.p=f.p or f.padding or f.size or f.height or f.value or 8
return e:_add(aj,f)
end


function d.HStack(e,f)
error("[RevUI] No se puede crear un Stack dentro de otro Stack.",2)
end
d.VStack=d.HStack


function d.Section(e,f)
error("[RevUI] No se puede crear una Section dentro de un Stack.",2)
end

return d
end

return am end function a.t():typeof(__modImpl())local aa=a.cache.t if not aa then aa={c=__modImpl()}a.cache.t=aa end return aa.c end end do local function __modImpl()




return{
Button=a.j(),
Space=a.k(),
Toggle=a.l(),
Slider=a.m(),
Dropdown=a.n(),
Keybind=a.o(),
Section=a.p(),
Input=a.q(),
ColorPicker=a.r(),
Stack=a.t(),
Card=a.s(),
}end function a.u():typeof(__modImpl())local aa=a.cache.u if not aa then aa={c=__modImpl()}a.cache.u=aa end return aa.c end end do local function __modImpl()






local aa=a.u()
local ab=a.g()a.e()


local ac=a.b()
local ae=ac.palette

local af={}
af.__index=af

function af.new(ag,ah)
local ai=setmetatable({},af)
ah=ah or{}

ai._window=ag
ai._order=0
ai.name=ah.name or"Tab"

local aj=#ag._tabs+1

ai.panel=ab.scrollingFrame({
Name=ai.name.."Panel",
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
BorderSizePixel=0,
CanvasSize=UDim2.new(0,0,0,0),
AutomaticCanvasSize=Enum.AutomaticSize.Y,
ScrollBarThickness=4,
ScrollBarImageColor3=ae.primary,
ScrollBarImageTransparency=0.15,
ScrollingDirection=Enum.ScrollingDirection.Y,
VerticalScrollBarInset=Enum.ScrollBarInset.ScrollBar,
ClipsDescendants=true,
Visible=false,
},ag._content)

ac.bind(ai.panel,"ScrollBarImageColor3","primary")

ab.create("UIListLayout",{
Padding=UDim.new(0,2),
SortOrder=Enum.SortOrder.LayoutOrder,
},ai.panel)

ab.create("UIPadding",{
PaddingTop=UDim.new(0,12),
PaddingLeft=UDim.new(0,12),
PaddingRight=UDim.new(0,12),
PaddingBottom=UDim.new(0,12),
},ai.panel)

ai.button=ab.button({
Name=ai.name.."Tab",
Size=UDim2.new(1,0,0,40),
BackgroundColor3=ae.surface2,
BackgroundTransparency=1,
Text="               "..ai.name,
TextColor3=ae.textMuted,
FontRole="title",
TextSize=13,
TextXAlignment=Enum.TextXAlignment.Left,
CornerRadius=UDim.new(0,10),
LayoutOrder=aj,
AutoButtonColor=false,
},ag._sidebar)

ai.icon=ab.icon(ah.icon or"circle",18,{
Position=UDim2.new(0,14,0.5,-9),
ImageColor3=ah.color or ae.textMuted,
},ai.button)

ai.button.MouseEnter:Connect(function()
if ag._activeTab==ai then return end
ai.button.BackgroundTransparency=0.5
ai.button.TextColor3=ae.text
ai.icon.ImageColor3=ae.text
end)
ai.button.MouseLeave:Connect(function()
if ag._activeTab==ai then return end
ai.button.BackgroundTransparency=1
ai.button.TextColor3=ae.textMuted
ai.icon.ImageColor3=ah.color or ae.textMuted
end)
ai.button.MouseButton1Click:Connect(function()
ag:_selectTab(ai)
end)

table.insert(ag._tabs,ai)
if#ag._tabs==1 then
ag:_selectTab(ai)
end


local ak=ah.color~=nil
ac.onChange(function()
local al=ag._activeTab==ai
ai.button.BackgroundTransparency=al and 0.2 or 1
ai.button.TextColor3=al and ae.text or ae.textMuted
ai.button.BackgroundColor3=ae.surface2
if not ak then
ai.icon.ImageColor3=al and ae.text or ae.textMuted
else
ai.icon.ImageColor3=ah.color
end
end,ai.button)

return ai
end


function af._add(ag,ah,ai,aj)
ag._order+=1

if type(ai)=="number"then
ai={p=ai}
elseif type(ai)~="table"then
ai={}
end

ai.order=ai.order or ag._order
local ak=aj or ag.panel
return ah(ak,ai)
end

function af.Button(ag,ah)return ag:_add(aa.Button,ah)end
function af.Space(ag,ah)return ag:_add(aa.Space,ah)end
function af.Toggle(ag,ah)return ag:_add(aa.Toggle,ah)end
function af.Slider(ag,ah)return ag:_add(aa.Slider,ah)end
function af.Dropdown(ag,ah)return ag:_add(aa.Dropdown,ah)end
function af.Keybind(ag,ah)return ag:_add(aa.Keybind,ah)end
function af.Input(ag,ah)return ag:_add(aa.Input,ah)end
function af.ColorPicker(ag,ah)return ag:_add(aa.ColorPicker,ah)end
function af.Card(ag,ah)return ag:_add(aa.Card,ah)end



function af.HStack(ag,ah)
return ag:_add(function(ai,aj)
return aa.Stack.new(ai,aj,ag._order)
end,ah)
end
af.VStack=af.HStack

function af.Section(ag,ah)
if type(ah)=="string"then ah={title=ah}end
ah=ah or{}
ag._order+=1
ah.order=ah.order or ag._order

local ai=aa.Section(ag.panel,ah)

ai.Button=function(aj,ak)
return ag:_add(aa.Button,ak,ai.content)
end
ai.Space=function(aj,ak)
return ag:_add(aa.Space,ak,ai.content)
end
ai.Toggle=function(aj,ak)
return ag:_add(aa.Toggle,ak,ai.content)
end
ai.Slider=function(aj,ak)
return ag:_add(aa.Slider,ak,ai.content)
end
ai.Dropdown=function(aj,ak)
return ag:_add(aa.Dropdown,ak,ai.content)
end
ai.Keybind=function(aj,ak)
return ag:_add(aa.Keybind,ak,ai.content)
end
ai.Input=function(aj,ak)
return ag:_add(aa.Input,ak,ai.content)
end
ai.ColorPicker=function(aj,ak)
return ag:_add(aa.ColorPicker,ak,ai.content)
end
ai.Card=function(aj,ak)
return ag:_add(aa.Card,ak,ai.content)
end
ai.HStack=function(aj,ak)
return ag:_add(function(al,am)
return aa.Stack.new(al,am,ag._order)
end,ak,ai.content)
end
ai.VStack=ai.HStack

return ai
end

function af.Label(ag,ah)
if type(ah)=="string"then ah={text=ah}end
return ag:_add(function(ai,aj)
local ak=ab.label({
Size=UDim2.new(1,0,0,16),
Text=aj.text or"",
TextColor3=aj.color or ae.textMuted,
TextWrapped=true,
},ai)
return{instance=ak,SetText=function(al,am)ak.Text=am end}
end,ah)
end

return af end function a.v():typeof(__modImpl())local aa=a.cache.v if not aa then aa={c=__modImpl()}a.cache.v=aa end return aa.c end end do local function __modImpl()













local aa=game:GetService"UserInputService"
local ab=game:GetService"TweenService"
local ac=game:GetService"RunService"

local ae=a.b()
local af=a.e()
local ag=a.g()
local ah=a.h()
local ai=a.v()

local aj=ae.palette
local ak=af.getIcon
local al=af.randomString

local am=380
local an=300

local ao={}

function ao.CreateWindow(ap)
ap=ap or{}

local aq=ap.size
local ar=ap.width or 590
local b=ap.height or 480
local c=ap.sidebarWidth or 152
local d=12
local e=8
local f=8
if typeof(aq)=="Vector2"then
ar=aq.X
b=aq.Y
elseif type(aq)=="table"then
ar=aq[1]or ar
b=aq[2]or b
end

local g=ap.title or"RevUI"
local h=ap.version or""
local i=ap.author or""
local j=ap.icon or""
local k=ap.toggleKey
local l=ap.theme or ap.themeName or ap.palette or nil

if type(l)=="string"or type(l)=="table"then
ae.set(l)
end

local m=ac:IsStudio()

local n=af.getSecureParent()
local o

if n:IsA"ScreenGui"then
o=n
else
o=ag.create("ScreenGui",{
Name=m and"RevUI"or al(),
ResetOnSpawn=false,
ZIndexBehavior=Enum.ZIndexBehavior.Sibling,
DisplayOrder=999,
},n)
end

ah.init(o)

local p={}
p.gui=o
p._tabs={}
p._activeTab=nil
p._connections={}


local q=aa.TouchEnabled and not aa.KeyboardEnabled
if q then
local r=ag.create("UIScale",{Scale=0.85},o)
local s=ag.create("ImageButton",{
Size=UDim2.new(0,48,0,48),
Position=UDim2.new(1,-70,1,-100),
BackgroundColor3=aj.primary,
Image=ak"menu",
ImageColor3=aj.white,
ZIndex=500,
CornerRadius=UDim.new(1,0),
},o)
s.MouseButton1Click:Connect(function()
p:SetVisible(not mainFrame.Visible)
end)
p._floatBtn=s
p._scale=r
end

local r=ag.frame({
Name=m and"MainWindow"or al(),
Size=UDim2.new(0,ar,0,b),
Position=UDim2.new(0.5,-ar/2,0.5,-b/2),
Active=true,
ClipsDescendants=true,
CornerRadius=UDim.new(0,16),
Stroke={Color=Color3.fromRGB(50,50,60),Thickness=1},
},o)
p.frame=r
ae.bind(r,"BackgroundColor3","black")

local s=r:FindFirstChildOfClass"UIStroke"
if s then
ae.bind(s,"Color","border")
end

local t=false
local u
local w
local x


r.Size=UDim2.new(0,ar*0.8,0,b*0.8)
r.Position=UDim2.new(0.5,-(ar*0.8)/2,0.5,-(b*0.8)/2)
r.BackgroundTransparency=1
ab:Create(r,
TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{
Size=UDim2.new(0,ar,0,b),
Position=UDim2.new(0.5,-ar/2,0.5,-b/2),
BackgroundTransparency=0,
}):Play()




local y=ag.frame({
Name="FloatingMinimized",
Size=UDim2.new(0,170,0,30),
AnchorPoint=Vector2.new(0.5,0),
Position=UDim2.new(0.5,0,0,24),
BackgroundColor3=aj.surface,
BackgroundTransparency=0,
Active=true,
ZIndex=500,
CornerRadius=UDim.new(0,10),
Stroke={Color=Color3.fromRGB(55,55,65),Thickness=1},
},o)
y.Visible=false
ae.bind(y,"BackgroundColor3","surface")

local z=y:FindFirstChildOfClass"UIStroke"
if z then
ae.bind(z,"Color","border")
end

local A=ag.button({
Size=UDim2.new(1,j~=""and-70 or-40,1,0),
Position=UDim2.new(0,j~=""and 30 or 8,0,0),
Text=g,
FontRole="bold",
TextSize=11,
TextColor3=aj.text,
TextXAlignment=Enum.TextXAlignment.Left,
ZIndex=512,
BackgroundTransparency=1,
AutoButtonColor=false,
BorderSizePixel=0,
},y)
ae.bind(A,"TextColor3","text")

A.MouseButton1Click:Connect(function()
if t then p:Restore()end
end)

if j~=""then
ag.icon(j,14,{
Position=UDim2.new(0,10,0.5,-7),
ImageColor3=aj.text,
ZIndex=513,
},y)
end

ag.frame({
Name="FloatingSeparator",
Size=UDim2.new(0,1,0,16),
Position=UDim2.new(1,-34,0.5,-8),
BackgroundColor3=Color3.fromRGB(90,90,100),
BorderSizePixel=0,
ZIndex=513,
},y)

local B=ag.imageButton({
Name="FloatingDragArea",
Size=UDim2.new(0,18,0,18),
Position=UDim2.new(1,-25,0.5,-9),
BackgroundColor3=aj.surface2,
Image=ak"move",
ImageColor3=aj.textMuted,
AutoButtonColor=false,
CornerRadius=UDim.new(0,5),
BorderSizePixel=0,
ZIndex=514,
},y)
ae.bind(B,"BackgroundColor3","surface2")
ae.bind(B,"ImageColor3","textMuted")

local C={active=false,start=Vector2.zero,origin=Vector2.zero}
B.InputBegan:Connect(function(D,E)
if E then return end
if D.UserInputType==Enum.UserInputType.MouseButton1
or D.UserInputType==Enum.UserInputType.Touch then
local F=y.AbsolutePosition
y.AnchorPoint=Vector2.new(0,0)
y.Position=UDim2.new(0,F.X,0,F.Y)

C.active=true
C.start=Vector2.new(D.Position.X,D.Position.Y)
C.origin=F
end
end)
table.insert(p._connections,aa.InputChanged:Connect(function(D)
if C.active
and(D.UserInputType==Enum.UserInputType.MouseMovement
or D.UserInputType==Enum.UserInputType.Touch)then
local E=Vector2.new(D.Position.X,D.Position.Y)-C.start
local F=C.origin+E
y.Position=UDim2.new(0,F.X,0,F.Y)
x=y.Position
end
end))

table.insert(p._connections,aa.InputEnded:Connect(function(D)
if D.UserInputType==Enum.UserInputType.MouseButton1
or D.UserInputType==Enum.UserInputType.Touch then
C.active=false
end
end))

if p._floatBtn then
p._floatBtn.MouseButton1Click:Connect(function()
p:SetVisible(not r.Visible)
end)
end
local D=ag.frame({
Name="TopBar",
Size=UDim2.new(1,0,0,44),
BackgroundTransparency=1,
CornerRadius=UDim.new(0,0),
},r)

ag.create("UIPadding",{
PaddingLeft=UDim.new(0,16),
PaddingRight=UDim.new(0,16),
},D)

local E=16
local F=8
local G=1
local H=j~=""and(E+F+G+F)or 0

local I=ag.frame({
Name="TitleGroup",
Size=UDim2.new(0,220,1,0),
Position=UDim2.new(0,0,0,0),
BackgroundTransparency=1,
},D)

if j~=""then
ag.icon(j,E,{
Position=UDim2.new(0,0,0.5,-E/2),
ImageColor3=aj.text,
},I)

ag.frame({
Name="TitleSeparator",
Size=UDim2.new(0,G,0,14),
Position=UDim2.new(0,E+F,0.5,-7),
BackgroundColor3=Color3.fromRGB(90,90,100),
BorderSizePixel=0,
},I)
end

ag.label({
Size=UDim2.new(0,180,1,0),
Position=UDim2.new(0,H,0,0),
Text=g,
FontRole="bold",
TextSize=15,
TextColor3=aj.text,
TextXAlignment=Enum.TextXAlignment.Left,
},I)

do
local J=I:GetChildren()
for K=#J,1,-1 do
if J[K]:IsA"TextLabel"then
ae.bind(J[K],"TextColor3","text")
break
end
end
end

if i~=""then
ag.label({
Size=UDim2.new(0,180,0,12),
Position=UDim2.new(0,H,1,-14),
Text=i,
FontRole="medium",
TextSize=10,
TextColor3=aj.textMuted,
TextXAlignment=Enum.TextXAlignment.Left,
},I)

do
local J=I:GetChildren()
for K=#J,1,-1 do
if J[K]:IsA"TextLabel"then
ae.bind(J[K],"TextColor3","textMuted")
break
end
end
end
end

if h~=""then
ag.label({
Size=UDim2.new(0,60,1,0),
Position=UDim2.new(0.5,-30,0,0),
Text=h,
FontRole="bold",
TextColor3=aj.white,
TextXAlignment=Enum.TextXAlignment.Center,
},D)
end

local J=ag.imageButton({
Size=UDim2.new(0,24,0,24),
Position=UDim2.new(1,-55,0.5,-14),
Image=ak"minus",
ImageColor3=aj.textMuted,
CornerRadius=UDim.new(0,6),
},D)

local K=ag.imageButton({
Size=UDim2.new(0,24,0,24),
Position=UDim2.new(1,-28,0.5,-14),
Image=ak"x",
ImageColor3=aj.textMuted,
CornerRadius=UDim.new(0,6),
},D)


J.MouseEnter:Connect(function()J.ImageColor3=aj.text end)
J.MouseLeave:Connect(function()J.ImageColor3=aj.textMuted end)
K.MouseEnter:Connect(function()K.ImageColor3=aj.danger end)
K.MouseLeave:Connect(function()K.ImageColor3=aj.textMuted end)


local function tweenWindowProps(L,M,O)
local P=ab:Create(r,M or TweenInfo.new(0.28,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),L)
if O then
local R
R=P.Completed:Connect(function()
if R then R:Disconnect()end
O()
end)
end
P:Play()
return P
end
p._tweenWindowProps=tweenWindowProps

J.MouseButton1Click:Connect(function()
if t then p:Restore()else p:Minimize()end
end)

K.MouseButton1Click:Connect(function()
if p.onClose then p.onClose()end

local L=r.Size
tweenWindowProps({
Size=UDim2.new(0,L.X.Offset*0.85,0,L.Y.Offset*0.85),
BackgroundTransparency=1,
},TweenInfo.new(0.22,Enum.EasingStyle.Quad,Enum.EasingDirection.In),function()
p:Destroy()
end)
end)

ag.frame({
Size=UDim2.new(1,-32,0,1),
Position=UDim2.new(0,16,0,43),
BackgroundColor3=Color3.fromRGB(50,50,60),
CornerRadius=UDim.new(0,0),
},r)




D.InputBegan:Connect(function(L,M)
if M then return end
if L.UserInputType==Enum.UserInputType.MouseButton1
or L.UserInputType==Enum.UserInputType.Touch then
local O=Vector2.new(L.Position.X,L.Position.Y)
local P=Vector2.new(r.AbsolutePosition.X,r.AbsolutePosition.Y)

local R=aa.InputChanged:Connect(function(R)
if R.UserInputType==Enum.UserInputType.MouseMovement
or R.UserInputType==Enum.UserInputType.Touch then
local S=Vector2.new(R.Position.X,R.Position.Y)-O
r.Position=UDim2.new(0,P.X+S.X,0,P.Y+S.Y)
end
end)

local S
S=aa.InputEnded:Connect(function(T)
if T.UserInputType==Enum.UserInputType.MouseButton1
or T.UserInputType==Enum.UserInputType.Touch then
R:Disconnect()
S:Disconnect()
end
end)
end
end)




function p._syncLayout(L,M,O)
local P=M or r.Size.X.Offset
local R=O or r.Size.Y.Offset
local S=math.max(0,P-(d+c+e)-f)
local T=math.max(0,R-44-20)
p._sidebar.Size=UDim2.new(0,c,0,T)
p._sidebar.Position=UDim2.new(0,d,0,54)
p._content.Size=UDim2.new(0,S,0,T)
p._content.Position=UDim2.new(0,d+c+e,0,54)
end

p._sidebar=ag.frame({
Name="TabContainer",
Size=UDim2.new(0,c,0,b-44-20),
Position=UDim2.new(0,d,0,54),
BackgroundTransparency=1,
CornerRadius=UDim.new(0,0),
},r)

ag.create("UIListLayout",{
Padding=UDim.new(0,4),
SortOrder=Enum.SortOrder.LayoutOrder,
},p._sidebar)

ag.create("UIPadding",{PaddingRight=UDim.new(0,8)},p._sidebar)

p._content=ag.frame({
Name="ContentArea",
Size=UDim2.new(0,ar-(d+c+e)-f,0,b-44-20),
Position=UDim2.new(0,d+c+e,0,54),
BackgroundColor3=aj.surface,
CornerRadius=UDim.new(0,12),
Stroke={Color=Color3.fromRGB(45,45,55),Thickness=1,Transparency=0.6},
},r)
ae.bind(p._content,"BackgroundColor3","surface")
do
local L=p._content:FindFirstChildOfClass"UIStroke"
if L then
ae.bind(L,"Color","border")
end
end

p:_syncLayout(ar,b)




local L=18
local M=3
local O=1

local P=ag.create("Frame",{
Name="ResizeHandle",
Size=UDim2.new(0,L,0,L),
AnchorPoint=Vector2.new(1,1),
BackgroundTransparency=1,
BorderSizePixel=0,
Active=true,
ZIndex=600,
},o)

ag.create("Frame",{
Name="BarH",
Size=UDim2.new(1,0,0,M),
Position=UDim2.new(0,0,1,-M),
BackgroundColor3=aj.primary,
BorderSizePixel=0,
ZIndex=601,
CornerRadius=UDim.new(1,0),
},P)

ag.create("Frame",{
Name="BarV",
Size=UDim2.new(0,M,1,0),
Position=UDim2.new(1,-M,0,0),
BackgroundColor3=aj.primary,
BorderSizePixel=0,
ZIndex=601,
CornerRadius=UDim.new(1,0),
},P)


for R,S in ipairs(P:GetChildren())do
if S:IsA"Frame"then
ae.bind(S,"BackgroundColor3","primary")
end
end

local function updateHandlePos()
local R=r.AbsolutePosition
local S=r.AbsoluteSize
local T=R.X+S.X+O
local U=R.Y+S.Y+O
P.Position=UDim2.new(0,T,0,U)
end

updateHandlePos()

r:GetPropertyChangedSignal"AbsolutePosition":Connect(updateHandlePos)
r:GetPropertyChangedSignal"AbsoluteSize":Connect(updateHandlePos)
r:GetPropertyChangedSignal"Visible":Connect(function()
P.Visible=r.Visible
end)




local R={active=false,start=Vector2.zero,size=Vector2.zero}
P.InputBegan:Connect(function(S,T)
if T then return end
if S.UserInputType==Enum.UserInputType.MouseButton1
or S.UserInputType==Enum.UserInputType.Touch then
R.active=true
R.start=Vector2.new(S.Position.X,S.Position.Y)
R.size=Vector2.new(r.AbsoluteSize.X,r.AbsoluteSize.Y)
end
end)

table.insert(p._connections,aa.InputChanged:Connect(function(S)
if not R.active then return end
if S.UserInputType==Enum.UserInputType.MouseMovement
or S.UserInputType==Enum.UserInputType.Touch then
local T=Vector2.new(S.Position.X,S.Position.Y)-R.start
local U=math.max(am,R.size.X+T.X)
local V=math.max(an,R.size.Y+T.Y)
r.Size=UDim2.new(0,U,0,V)
p:_syncLayout(U,V)
end
end))

table.insert(p._connections,aa.InputEnded:Connect(function(S)
if S.UserInputType==Enum.UserInputType.MouseButton1
or S.UserInputType==Enum.UserInputType.Touch then
R.active=false
end
end))




function p.Minimize(S)
if t then return end
t=true

u=r.Position
w=r.Size


tweenWindowProps({
Size=UDim2.new(0,w.X.Offset*0.85,0,w.Y.Offset*0.85),
BackgroundTransparency=1,
},TweenInfo.new(0.22,Enum.EasingStyle.Quad,Enum.EasingDirection.In),function()
r.Visible=false
y.Visible=true

y.Size=UDim2.new(0,140,0,24)
y.BackgroundTransparency=1
ab:Create(y,TweenInfo.new(0.25,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{
Size=UDim2.new(0,170,0,30),
BackgroundTransparency=0,
}):Play()
end)

if x then
y.AnchorPoint=Vector2.new(0,0)
y.Position=x
end
end

function p.Restore(S)
if not t then return end
t=false

y.Visible=false
r.Visible=true

if u then r.Position=u end

local T=w or UDim2.new(0,ar,0,b)
r.Size=UDim2.new(0,T.X.Offset*0.85,0,T.Y.Offset*0.85)
r.BackgroundTransparency=1
tweenWindowProps({
Size=T,
BackgroundTransparency=0,
},TweenInfo.new(0.3,Enum.EasingStyle.Back,Enum.EasingDirection.Out),function()
if w then
p:_syncLayout(w.X.Offset,w.Y.Offset)
end
end)
end

function p.ToggleMinimize(S)
if t then p:Restore()else p:Minimize()end
end

function p._selectTab(S,T)
if S._activeTab then
S._activeTab.button.BackgroundTransparency=1
S._activeTab.button.TextColor3=aj.textMuted
S._activeTab.panel.Visible=false
end
T.button.BackgroundTransparency=0.2
T.button.TextColor3=aj.text
T.panel.Visible=true
S._activeTab=T
end

function p.Tab(S,T)
return ai.new(S,T)
end

function p.SetVisible(S,T)
if T then
if t then
p:Restore()
else

r.Visible=true
local U=w or UDim2.new(0,ar,0,b)
local V,W=U.X.Offset,U.Y.Offset
r.Size=UDim2.new(0,V*0.85,0,W*0.85)
r.BackgroundTransparency=1
tweenWindowProps({
Size=U,
BackgroundTransparency=0,
},TweenInfo.new(0.28,Enum.EasingStyle.Back,Enum.EasingDirection.Out))
end
else
if t then
y.Visible=false
end

local U=r.Size
tweenWindowProps({
Size=UDim2.new(0,U.X.Offset*0.85,0,U.Y.Offset*0.85),
BackgroundTransparency=1,
},TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.In),function()
r.Visible=false

if w then
r.Size=w
else
r.Size=UDim2.new(0,ar,0,b)
end
r.BackgroundTransparency=0
end)
end
end










p._toggleKey=nil
p._toggleConn=nil

local function normalizeKey(S)
if S==nil then return nil end


if typeof(S)=="EnumItem"and S.EnumType==Enum.KeyCode then
return S
end


if type(S)=="string"then
local T,U=pcall(function()return Enum.KeyCode[S]end)
if T and U then return U end

T,U=pcall(function()return Enum.KeyCode[S:upper()]end)
if T and U then return U end
return nil
end


if type(S)=="number"then
for T,U in ipairs(Enum.KeyCode:GetEnumItems())do
if U.Value==S then return U end
end
return nil
end

return nil
end


p._toggleConn=aa.InputBegan:Connect(function(S,T)
if not p._toggleKey then return end

if T or aa:GetFocusedTextBox()then return end
if S.KeyCode==p._toggleKey then
p:SetVisible(not r.Visible)
end
end)
table.insert(p._connections,p._toggleConn)

function p.SetToggleKey(S,T)
if T==nil then
p._toggleKey=nil
return
end

local U=normalizeKey(T)
if not U then
warn(("[RevUI] SetToggleKey: valor inválido %q (%s). Se mantiene la tecla anterior.")
:format(tostring(T),typeof(T)))
return
end

p._toggleKey=U
end

function p.GetToggleKey(S)
return p._toggleKey
end


if k~=nil then
p:SetToggleKey(k)
end




function p.Destroy(S)
o:Destroy()
end
p.destroy=p.Destroy

o.Destroying:Connect(function()
for S,T in ipairs(p._connections)do
pcall(function()T:Disconnect()end)
end
end)

return p
end

return ao end function a.w():typeof(__modImpl())local aa=a.cache.w if not aa then aa={c=__modImpl()}a.cache.w=aa end return aa.c end end do local function __modImpl()

















local aa=game:GetService"TweenService"

local ab=a.b()
local ac=a.g()


local ae=ab.palette

local af={}

function af.show(ag,ah)
ah=ah or{}
local ai=ah.buttons or{{text="OK"}}


local aj=ac.create("TextButton",{
Name="DialogBlocker",
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
Text="",
AutoButtonColor=false,
Active=true,
ZIndex=200,
},ag)

local ak=ac.create("Frame",{
Name="Dialog",
Size=UDim2.new(0,280,0,150),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundColor3=ae.surface,
BorderSizePixel=0,
ZIndex=201,
CornerRadius=UDim.new(0,14),
Stroke={Color=Color3.fromRGB(45,45,55),Thickness=1,Transparency=0.5},
},aj)

ab.bind(ak,"BackgroundColor3","surface")

ac.label({
Size=UDim2.new(1,-32,0,20),
Position=UDim2.new(0,16,0,18),
Text=ah.title or"",
FontRole="bold",
TextSize=16,
ZIndex=202,
},ak)

ac.label({
Size=UDim2.new(1,-32,0,60),
Position=UDim2.new(0,16,0,44),
Text=ah.message or"",
TextColor3=ae.textMuted,
TextSize=13,
TextWrapped=true,
TextYAlignment=Enum.TextYAlignment.Top,
ZIndex=202,
},ak)

local al=ac.create("Frame",{
Position=UDim2.new(0,16,1,-52),
Size=UDim2.new(1,-32,0,36),
BackgroundTransparency=1,
ZIndex=202,
},ak)

ac.create("UIListLayout",{
FillDirection=Enum.FillDirection.Horizontal,
HorizontalAlignment=Enum.HorizontalAlignment.Right,
VerticalAlignment=Enum.VerticalAlignment.Center,
Padding=UDim.new(0,8),
},al)

local am=false
local function close()
if am then return end
am=true
local an=aa:Create(ak,
TweenInfo.new(0.18,Enum.EasingStyle.Quad,Enum.EasingDirection.In),
{Size=UDim2.new(0,260,0,140)})
an:Play()
an.Completed:Connect(function()
aj:Destroy()
end)
end

for an,ao in ipairs(ai)do
local ap=ao.style or"primary"
local aq=ac.button({
Size=UDim2.new(0,110,1,0),
BackgroundColor3=ap=="danger"and ae.danger
or ap=="primary"and ae.primary
or ae.surface2,
Text=ao.text or"OK",
TextSize=13,
ZIndex=203,
AutoButtonColor=ap~="ghost",
},al)
if ap=="ghost"then
aq.BackgroundTransparency=0.4
end
aq.MouseButton1Click:Connect(function()
close()
if ao.callback then task.spawn(ao.callback)end
end)
end


aa:Create(ak,
TweenInfo.new(0.25,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
{Size=UDim2.new(0,320,0,170)}):Play()

return{
Close=close,
instance=ak,
}
end

return af end function a.x():typeof(__modImpl())local aa=a.cache.x if not aa then aa={c=__modImpl()}a.cache.x=aa end return aa.c end end end







local aa=a.b()
local ab=a.c()
local ac=a.g()
local ae=a.h()
local af=a.w()
local ag=a.x()

local ah={}
ah.Theme=aa
ah.Fonts=ab
ah.Colors=aa.palette
ah.Notifications=ae
ah._gui=nil
ah.SetTheme=aa.set
ah.ApplyTheme=aa.set


function ah.CreateWindow(ai,aj)
local ak=type(ai)=="table"and type(aj)=="table"and aj or ai
ak=ak or{}
local al=af.CreateWindow(ak)
ah._gui=al.gui
ah._window=al
return al
end

function ah.SetMinimizeKey(ai)
if ah._window and type(ah._window.SetToggleKey)=="function"then
ah._window:SetToggleKey(ai)
return true
end
return false
end
ah.SetToggleKey=ah.SetMinimizeKey

function ah.Notify(ai,aj)
local ak
if type(ai)=="table"and type(aj)=="table"then
ak=aj
elseif type(ai)=="table"then
ak=ai
else
ak={message=ai,type=aj}
end
return ae.show(ak)
end
ah.notify=ae.show

function ah.Dialog(ai,aj)
local ak=type(ai)=="table"and type(aj)=="table"and aj or ai
assert(ah._gui,"[RevUI] Crea una ventana antes de mostrar un diálogo")
return ag.show(ah._gui,ak)
end

for ai,aj in pairs(ac)do
if ah[ai]==nil then
ah[ai]=aj
end
end

return ah
