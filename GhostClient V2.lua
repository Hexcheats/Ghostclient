local menuref = gui.Reference("MENU")
local base = gui.Tab(gui.Reference("Settings"), "Ghost Client", "Ghost Client")
local menubox = gui.Groupbox(base, "Ghost Client", 16, 16, 608, 500)
local info = gui.Groupbox(base, "Information", 16, 130, 608, 500)
local open = gui.Keybox(menubox, "Menu.Key","Menu Key", 45)
--Ghost Client Settings in menu

--update
local CURRENTVERSION = "1.1"
local LATESTVERSION = http.Get("https://raw.githubusercontent.com/Hexcheats/Ghostclient/master/version.txt")
local function Update() 
    if CURRENTVERSION ~= LATESTVERSION then
        currentScript = file.Open(GetScriptName(), "w")
        currentScript:Write(http.Get(""))
        currentScript:Close()
        LoadScript(GetScriptName())
    end
end

--Credits
local credit = gui.Text(info, "Ghost Client Is a client Coded By FGLX and dodo we try and improve aimware and help u guys enjoy your time with aimware and we have to give a big thanks to Hamgod,Setway,Sc0pe,xeefii these people are who help make this happen and everyones support at Ghost Discord")


local ghost = gui.Window("Ghost", "Ghost Client", 100, 100, 1035, 575)

local function openkey1()
ghost:SetOpenKey(open:GetValue())
end

callbacks.Register("Draw", openkey1);
--Gui open function

----Gui Buttons
local tabback = gui.Groupbox(ghost, "Ghost Client", 5, 5, 170, 500)
--builderbox
local builderbox = gui.Groupbox(ghost, "Builder", 178, 5, 645, 500)
local fakelagS = gui.Groupbox(builderbox, "FakeLag", 0, 0, 200, 500)
local slowwalkS = gui.Groupbox(builderbox, "SlowWalk", 205, 0, 200, 500)
local other = gui.Groupbox(builderbox, "Other", 410, 0, 200, 500)
local fakelagJ = gui.Groupbox(builderbox, "FakeLag", 0, 186, 200, 500)
local slowwalkJ = gui.Groupbox(builderbox, "SlowWalk", 205, 186, 200, 500)
--RageBox
local ragebox = gui.Groupbox(ghost, "RageBot", 178, 5, 645, 500)
local rageauto = gui.Groupbox(ragebox, "Auto MinDamge", 0, 0, 200, 500)
local rageawp = gui.Groupbox(ragebox, "Awp MinDamge", 205, 0, 200, 500)
local Baim = gui.Groupbox(ragebox, "BaimWare", 410, 0, 200, 500)
local rageautohit = gui.Groupbox(ragebox, "Auto HitChance", 0, 185, 200, 500)
local rageawphit = gui.Groupbox(ragebox, "Awp HitChance", 205, 185, 200, 500)
local ragescouthit = gui.Groupbox(ragebox, "Scout HitChance", 410, 110, 200, 500)
--settingbox
local settingbox = gui.Groupbox(ghost, "Settings", 178, 5, 317, 500)
local presetbox = gui.Groupbox(settingbox, "PreSet Settings", 0, 0, 217, 500)
--aaBox
local aabox = gui.Groupbox(ghost, "Anti-Aim", 178, 5, 847, 1000)
local aaYawJ = gui.Groupbox(aabox, "Real Yaw", 0, 0, 200, 500)
local aaLeftJ = gui.Groupbox(aabox, "Left Desync", 205, 0, 200, 500)
local aaRightJ = gui.Groupbox(aabox, "Right Desync", 410, 0, 200, 500)
local aaYawS = gui.Groupbox(aabox, "Real Yaw", 0, 235, 200, 500)
local aaLeftS = gui.Groupbox(aabox, "Left Desync", 205, 235, 200, 500)
local aaRightS = gui.Groupbox(aabox, "Right Desync", 410, 235, 200, 500)
local aaMunual = gui.Groupbox(aabox, "Munual Anti-Aim", 615, 0, 200, 500)
--update box
local updatebox = gui.Groupbox(ghost, "Update", 178, 5, 417, 500)
--Visable value
settingbox:SetInvisible(true)
ragebox:SetInvisible(true)
builderbox:SetInvisible(true)
updatebox:SetInvisible(true)
--button Tab Function
local aatab = gui.Button(tabback, "Anti-Aim", function()
    ghost:SetHeight(575)
    ghost:SetWidth(1035)
    aabox:SetInvisible(false);
    settingbox:SetInvisible(true);
    ragebox:SetInvisible(true);
    builderbox:SetInvisible(true)
    updatebox:SetInvisible(true)
end )
local ragetab = gui.Button(tabback, "Rage-Bot", function()
    ghost:SetWidth(833)
    ghost:SetHeight(515)
    aabox:SetInvisible(true);
    settingbox:SetInvisible(true);
    ragebox:SetInvisible(false);
    builderbox:SetInvisible(true)
    updatebox:SetInvisible(true)
end )
local buildertab = gui.Button(tabback, "Builder", function()
    ghost:SetWidth(833)
    ghost:SetHeight(517)
    aabox:SetInvisible(true);
    settingbox:SetInvisible(true);
    ragebox:SetInvisible(true);
    builderbox:SetInvisible(false)
    updatebox:SetInvisible(true)
end )
local settingstab = gui.Button(tabback, "Settings", function()
    ghost:SetWidth(500)
    ghost:SetHeight(330)
    aabox:SetInvisible(true);
    settingbox:SetInvisible(false);
    ragebox:SetInvisible(true);
    builderbox:SetInvisible(true)
    updatebox:SetInvisible(true)
end )
local settingstab = gui.Button(tabback, "update", function()
    ghost:SetWidth(500)
    ghost:SetHeight(330)
    aabox:SetInvisible(true);
    settingbox:SetInvisible(true);
    ragebox:SetInvisible(true);
    builderbox:SetInvisible(true)
    updatebox:SetInvisible(false)
end )

--update
local OriLua_LL_CURRENTVERSION = gui.Text(updatebox, "Current version: v" .. CURRENTVERSION)
local OriLua_LL_LATESTVERSION = gui.Text(updatebox, "Latest version: v" .. LATESTVERSION)
local OriLua_LL_UPDATE = gui.Button(updatebox, "Update", Update)
local OriLua_LL_CHANGELOG_TEXT = gui.Text(updatebox, http.Get("https://raw.githubusercontent.com/Hexcheats/Ghostclient/master/changelog.txt"))



---Setting buttons
local EnableGhost = gui.Checkbox(presetbox, "EnableGhost", "GhostMode", false)
local Enable2Tap = gui.Checkbox(presetbox, "Enable2Tap", "2Tap", false)
--AA checkbox
local EnableYawJ = gui.Checkbox(aaYawJ, "EnableYawJ", "Enable", false)
local EnableLeftJ = gui.Checkbox(aaLeftJ, "EnableLeftJ", "Enable", false)
local EnableRightJ = gui.Checkbox(aaRightJ, "EnableRightJ", "Enable", false)
local EnableYawS = gui.Checkbox(aaYawS, "EnableYawS", "Enable", false)
local EnableLeftS = gui.Checkbox(aaLeftS, "EnableLeftS", "Enable", false)
local EnableRightS = gui.Checkbox(aaRightS, "EnableRightS", "Enable", false)
local EnableRight = gui.Checkbox(aaMunual, "EnableRight", "Right Enable", false)
local EnableLeft = gui.Checkbox(aaMunual, "EnableLeft", "Left Enable", false)
local EnableBack = gui.Checkbox(aaMunual, "Enableback", "BackWards Enable", false)
--builder checkbox
local EnablefakeS = gui.Checkbox(fakelagS, "EnablefakeS", "Enable", false)
local EnableslowS = gui.Checkbox(slowwalkS, "EnableslowJ", "Enable", false)
local EnablefakeJ = gui.Checkbox(fakelagJ, "EnablefakeS", "Enable", false)
local EnableslowJ = gui.Checkbox(slowwalkJ, "EnableslowJ", "Enable", false)
local fasterdt = gui.Checkbox(other, "fasterdt", "Faster DoubleTap", false)
local enablefake = gui.Checkbox( other, "fakewalk", "Activate FakeWalk", false )
--rage checkbox
local Enableautohit = gui.Checkbox(rageautohit, "Enableautohit", "Enable", false)
local Enableawphit = gui.Checkbox(rageawphit, "Enableawphit", "Enable", false)
local Enablescouthit = gui.Checkbox(ragescouthit, "Enablescouthit", "Enable", false)
local Enableauto = gui.Checkbox(rageauto, "Enableauto", "Enable", false)
local Enableawp = gui.Checkbox(rageawp, "Enableawp", "Enable", false)
local ui_key, cache_baim, reset = gui.Keybox(Baim, "bodyaimkey", "Force Bodyaim On Key", 0), {}, true;

--bulder keybox
local fakewalkkey = gui.Keybox(other, "fakewalkkey", "FakeWalk Key", 0)
--AA Keybox
local Rightaa = gui.Keybox( aaMunual, "keyR", "Right AA", 0)
local Leftaa = gui.Keybox( aaMunual, "keyL", "Left AA", 0)
local Backaa = gui.Keybox( aaMunual, "keyB", "Backwards AA", 0)
--builderSliders
local Minfake = gui.Slider(fakelagS, "Minfake", "MinFakeLag", 3, 3, 17);
local Maxfake = gui.Slider(fakelagS, "Maxfake", "MaxFakeLag", 3, 3, 17);
local Minslow = gui.Slider(slowwalkS, "Minslow", "MinSlowWalk", 1, 1, 100);
local Maxslow = gui.Slider(slowwalkS, "Maxslow", "MaxSlowWalk", 1, 1, 100);
local limitfakeS = gui.Slider(fakelagJ, "limitfake", "Limit FakeLag", 1, 1, 17);
local freqfakeS = gui.Slider(fakelagJ, "frequencyfake", "Speed FakeLag", 0, 1, 100);
local centerfakeS = gui.Slider(fakelagJ, "centerfake", "Center FakeLag", 0, 3, 17);
local limitslowJ = gui.Slider(slowwalkJ, "limitslow", "Limit SlowWalk", 0, 1, 080);
local freqslowJ = gui.Slider(slowwalkJ, "frequencyslow", "Speed SlowWalk", 0, 1, 200);
local centerslowJ = gui.Slider(slowwalkJ, "centerslow", "Center SlowWalk", 0, 1, 100);
--rageSliders
local Minauto = gui.Slider(rageauto, "MinDamge", "MinDamge", 1, 1, 100);
local Maxauto = gui.Slider(rageauto, "MaxDamge", "MaxDamge", 1, 1, 100);
local Minawp = gui.Slider(rageawp, "MinDamge", "MinDamge", 1, 1, 100);
local Maxawp = gui.Slider(rageawp, "MaxDamge", "MaxDamge", 1, 1, 100); 
local autohitmin = gui.Slider(rageautohit, "Minhitauto", "Min HitChance", 1, 1, 100);
local autohitmax = gui.Slider(rageautohit, "Maxhitauto", "Max HitChance", 1, 1, 100);
local autospeed = gui.Slider(rageautohit, "speedauto", "Speed", 1, 1, 300)
local awphitmin = gui.Slider(rageawphit, "Minhitawp", "Min HitChance", 1, 1, 100);
local awphitmax = gui.Slider(rageawphit, "Maxhitawp", "Max HitChance", 1, 1, 100);
local awpspeed = gui.Slider(rageawphit, "speedawp", "Speed", 1, 1, 300) 
local scouthitmin = gui.Slider(ragescouthit, "Minhitscout", "Min HitChance", 1, 1, 100);
local  scouthitmax = gui.Slider(ragescouthit, "Maxhitscout", "Max HitChance", 1, 1, 100);
local  scoutspeed = gui.Slider(ragescouthit, "speedscout", "Speed", 1, 1, 300)

--aaSliders
local MinYawS = gui.Slider(aaYawS, "MinYaw", "Min Yaw", 0, -180, 180);
local MaxYawS = gui.Slider(aaYawS, "MaxYaw", "Max Yaw", 0, -180, 180);
local MinLeftS = gui.Slider(aaLeftS, "MinLeft", "Min Left", 0, 0, 58);
local MaxLeftS = gui.Slider(aaLeftS, "MaxLeft", "Max Left", 0, 0, 58);
local MinRightS = gui.Slider(aaRightS, "MinRight", "Min Right", 0, 0, 58);
local MaxRightS = gui.Slider(aaRightS, "MaxRight", "Max Right", 0, 0, 58);
local limitYawS = gui.Slider(aaYawJ, "limitYaw", "Limit Yaw", 0, 1, 180);
local freqYawJ = gui.Slider(aaYawJ, "frequencyYaw", "Speed Yaw", 0, 1, 200);
local centerYawJ = gui.Slider(aaYawJ, "centerYaw", "Center Yaw", 0, -180, 180);
local limitLeftJ = gui.Slider(aaLeftJ, "limitLeft", "Limit Left", 0, 1, 58);
local freqLeftJ = gui.Slider(aaLeftJ, "frequencyLeft", "Speed Left", 0, 1, 100);
local centerLeftJ = gui.Slider(aaLeftJ, "centerLeft", "Center Left", 0, 1, 58);
local limitRightJ = gui.Slider(aaRightJ, "limitRight", "Limit Right", 0, 1, 58);
local freqRightJ = gui.Slider(aaRightJ, "frequencyRight", "Speed Right", 0, 1, 100);

local centerRight = gui.Slider(aaRightJ, "centerRight", "Center Right", 0, 1, 58)
;
local right = gui.Slider(aaMunual, "right", "Right", 90, -180, 180);
local left = gui.Slider(aaMunual, "left", "Left", -90, -180, 180);
local back = gui.Slider(aaMunual, "back", "back", 180, -180, 180);
---Values
local RotationJitter = 10
local RotationJitter1 = 10
local RotationJitter2 = 10
local RotationJitter3 = 10
local RotationJitter4 = 10
local RotationJitter5 = 10
local RotationJitter6 = 10
local keyR = gui.GetValue("Ghost.keyR")
local keyL = gui.GetValue("Ghost.keyL")


--Description
EnableGhost:SetDescription("Amazing AA settings by HamGod");
Enable2Tap:SetDescription("Breaks OneTap Without override by FGLX");
--functions aa

local function jitterYaw()
if EnableYawJ:GetValue() then
	maths = (gui.GetValue("Ghost.limitYaw") * math.cos((globals.RealTime()) / (gui.GetValue("Ghost.frequencyYaw")*(0.01)))+ gui.GetValue("Ghost.centerYaw"));
	gui.SetValue("rbot.antiaim.yaw", maths)
 end
end


callbacks.Register("Draw", jitterYaw);

local function jitterLeft()
if EnableLeftJ:GetValue() then
	maths = (gui.GetValue("Ghost.limitRight") * math.cos((globals.RealTime()) / (gui.GetValue("Ghost.frequencyLeft")*(0.01)))+ gui.GetValue("Ghost.centerLeft"));
	gui.SetValue("rbot.antiaim.desyncleft", maths)
 end
end


callbacks.Register("Draw", jitterLeft);

local function jitterRight()
if EnableRightJ:GetValue() then
	maths = (gui.GetValue("Ghost.limitRight") * math.cos((globals.RealTime()) / (gui.GetValue("Ghost.frequencyRight")*(0.01)))+ gui.GetValue("Ghost.centerRight"));
	gui.SetValue("rbot.antiaim.desyncright", maths)
 end
end


callbacks.Register("Draw", jitterRight);


function SwitchYaw()
 if EnableYawS:GetValue() then
   if (RotationJitter == 10) then
        gui.SetValue("rbot.antiaim.yaw", MinYawS:GetValue())
        RotationJitter = 11
    elseif (RotationJitter == 11) then
        gui.SetValue("rbot.antiaim.yaw", MaxYawS:GetValue())
        RotationJitter = 10
        end
  end
end

callbacks.Register("Draw", SwitchYaw)


function SwitchLeft()
 if EnableLeftS:GetValue() then
   if (RotationJitter1 == 10) then
        gui.SetValue("rbot.antiaim.desyncleft", MinLeftS:GetValue())
        RotationJitter1 = 11
    elseif (RotationJitter1 == 11) then
        gui.SetValue("rbot.antiaim.desyncleft", MaxLeftS:GetValue())
        RotationJitter1 = 10
        end
  end
end

callbacks.Register("Draw", SwitchLeft)

function SwitchRight()
 if EnableRightS:GetValue() then
   if (RotationJitter2 == 10) then
        gui.SetValue("rbot.antiaim.desyncright", MinRightS:GetValue())
        RotationJitter2 = 11
    elseif (RotationJitter2 == 11) then
        gui.SetValue("rbot.antiaim.desyncright", MaxRightS:GetValue())
        RotationJitter2 = 10
        end
  end
end

callbacks.Register("Draw", SwitchRight)



local function OnDraw1() 
   local KeyL = gui.GetValue("Ghost.keyL") 
      if Leftaa:GetValue() then
        if input.IsButtonDown(KeyL) then
         gui.SetValue("rbot.antiaim.yaw", left:GetValue()) 
         draw.Text( 900, 534, "<====" )
        end
      end  
end


local function OnDraw2() 
   local KeyR = gui.GetValue("Ghost.keyR") 
      if Rightaa:GetValue() then
        if input.IsButtonDown(KeyR) then
         gui.SetValue("rbot.antiaim.yaw", right:GetValue())
         draw.Text( 970, 534, "====>" )
        end
      end  
end


local function OnDraw3() 
   local KeyB = gui.GetValue("Ghost.keyB") 
      if Backaa:GetValue() then
        if input.IsButtonDown(KeyB) then
         gui.SetValue("rbot.antiaim.yaw", back:GetValue())
         draw.Text( 954, 550, "||" )
        end
      end  
end



callbacks.Register( "Draw", "LuaGuiTest", OnDraw1 );
callbacks.Register( "Draw", "LuaGuiTest2", OnDraw2 );
callbacks.Register( "Draw", "LuaGuiTest3", OnDraw3 );





--Function Settings
local function set1() 
      if Enable2Tap:GetValue() then
       gui.SetValue("Ghost.EnableYawJ", true)
       gui.SetValue("Ghost.EnableLeftS", true)
       gui.SetValue("Ghost.EnableRightS", true)
       gui.SetValue("Ghost.limitYaw", 52)
       gui.SetValue("Ghost.frequencyYaw", 9)
       gui.SetValue("Ghost.centerYaw", 169)
       gui.SetValue("Ghost.MinLeft", 17)
       gui.SetValue("Ghost.MaxLeft", 29)
       gui.SetValue("Ghost.MinRight", 20)
       gui.SetValue("Ghost.MaxRight", 16) 
     end  
end
callbacks.Register( "Draw",set1);
local function set2() 
      if EnableGhost:GetValue() then
       gui.SetValue("Ghost.EnableYawJ", true)
       gui.SetValue("Ghost.EnableLeftJ", true)
       gui.SetValue("Ghost.EnableRightJ", true)
       gui.SetValue("Ghost.EnableLeftS", true)
       gui.SetValue("Ghost.EnableRightS", true)
       gui.SetValue("Ghost.limitYaw", 7)
       gui.SetValue("Ghost.frequencyYaw", 1)
       gui.SetValue("Ghost.centerYaw", 179)
       gui.SetValue("Ghost.limitLeft",  3)
       gui.SetValue("Ghost.frequencyLeft", 1)
       gui.SetValue("Ghost.centerLeft", 58)
       gui.SetValue("Ghost.limitRight", 3)
       gui.SetValue("Ghost.frequencyRight", 1)
       gui.SetValue("Ghost.centerRight", 58)
       gui.SetValue("Ghost.MinLeft", 17)
       gui.SetValue("Ghost.MaxLeft", 17)
       gui.SetValue("Ghost.MinRight", 16)
       gui.SetValue("Ghost.MaxRight", 16) 
     end  
end
callbacks.Register( "Draw",set2);


--function builder

local function jitterFake()
if EnablefakeJ:GetValue() then
	maths = (gui.GetValue("Ghost.limitfake") * math.cos((globals.RealTime()) / (gui.GetValue("Ghost.frequencyfake")*(0.01)))+ gui.GetValue("Ghost.centerfake"));
	gui.SetValue("misc.fakelag.factor", maths)
 end
end


callbacks.Register("Draw", jitterFake);


local function jitterSlow()
if EnableslowJ:GetValue() then
	maths = (gui.GetValue("Ghost.limitslow") * math.cos((globals.RealTime()) / (gui.GetValue("Ghost.frequencyslow")*(0.01)))+ gui.GetValue("Ghost.centerslow"));
	gui.SetValue("rbot.accuracy.movement.slowspeed", maths)
 end
end


callbacks.Register("Draw", jitterSlow);


function Switchfake()
 if EnablefakeS:GetValue() then
   if (RotationJitter3 == 10) then
        gui.SetValue("misc.fakelag.factor", Minfake:GetValue())
        RotationJitter3 = 11
    elseif (RotationJitter3 == 11) then
        gui.SetValue("misc.fakelag.factor", Maxfake:GetValue())
        RotationJitter3 = 10
        end
  end
end


function Switchslow()
 if EnableslowS:GetValue() then
   if (RotationJitter4 == 10) then
        gui.SetValue("rbot.accuracy.movement.slowspeed", Minslow:GetValue())
        RotationJitter4 = 11
    elseif (RotationJitter4 == 11) then
        gui.SetValue("rbot.accuracy.movement.slowspeed", Maxslow:GetValue())
        RotationJitter4 = 10
        end
  end
end


callbacks.Register("Draw", Switchslow)
callbacks.Register("Draw", Switchfake)


local function betterdt()
  if fasterdt:GetValue() then
     gui.SetValue("rbot.antiaim.extra.shiftonshot", false)
  else
     gui.SetValue("rbot.antiaim.extra.shiftonshot", true)
   end  
end
callbacks.Register( "Draw", betterdt);

  

local function createMoveHook(cmd)
	
	if fakewalkkey:GetValue() == nil or 0 then return end


		if input.IsButtonDown( "a" ) and input.IsButtonDown( fakewalkkey:GetValue() ) and not input.IsButtonDown( "d" ) then
            cmd.sendpacket = false
            cmd.sidemove = -55
            cmd.sendpacket = false
            cmd.sidemove = -55
            cmd.sendpacket = false
            cmd.sidemove = -55
            cmd.sendpacket = false
            cmd.sidemove = -55
            cmd.sendpacket = false
            cmd.sendpacket = false
            cmd.sidemove = 0
            cmd.sendpacket = true
            cmd.sidemove = 0
            cmd.sendpacket = false
            cmd.sidemove = -55
        end
        if input.IsButtonDown( "d" ) and input.IsButtonDown( fakewalkkey:GetValue() ) and not input.IsButtonDown( "a" ) then
            cmd.sendpacket = false
            cmd.sidemove = 55
            cmd.sendpacket = false
            cmd.sidemove = 55
            cmd.sendpacket = false
            cmd.sidemove = 55
            cmd.sendpacket = false
            cmd.sidemove = 55
            cmd.sendpacket = false
            cmd.sendpacket = false
            cmd.sidemove = 0
            cmd.sendpacket = true
            cmd.sidemove = 0
            cmd.sendpacket = false
            cmd.sidemove = 55
        end
        if input.IsButtonDown( "s" ) and input.IsButtonDown( fakewalkkey:GetValue() ) and not input.IsButtonDown( "w" ) then
            cmd.sendpacket = false
            cmd.forwardmove = -55
            cmd.sendpacket = false
            cmd.forwardmove = -55
            cmd.sendpacket = false
            cmd.forwardmove = -55
            cmd.sendpacket = false
            cmd.forwardmove = -55
            cmd.sendpacket = false
            cmd.sendpacket = false
            cmd.forwardmove = 0
            cmd.sendpacket = true
            cmd.forwardmove = 0
            cmd.sendpacket = false
            cmd.forwardmove = -55
        end
        if input.IsButtonDown( "w" ) and input.IsButtonDown( fakewalkkey:GetValue() ) and not input.IsButtonDown( "s" ) then
            cmd.sendpacket = false
            cmd.forwardmove = 55
            cmd.sendpacket = false
            cmd.forwardmove = 55
            cmd.sendpacket = false
            cmd.forwardmove = 55
            cmd.sendpacket = false
            cmd.forwardmove = 55
            cmd.sendpacket = false
            cmd.sendpacket = false
            cmd.forwardmove = 0
            cmd.sendpacket = true
            cmd.forwardmove = 0
            cmd.sendpacket = false
            cmd.forwardmove = 55
        end
	end


callbacks.Register("CreateMove", createMoveHook)



--Function rage
function SwitchAuto()
 if Enableauto:GetValue() then
   if (RotationJitter5 == 10) then
        gui.SetValue("rbot.accuracy.weapon.asniper.mindmg", Minauto:GetValue())
        RotationJitter5 = 11
    elseif (RotationJitter5 == 11) then
        gui.SetValue("rbot.accuracy.weapon.asniper.mindmg", Maxauto:GetValue())
        RotationJitter5 = 10
        end
  end
end


function SwitchAWP()
 if Enableawp:GetValue() then
   if (RotationJitter6 == 10) then
        gui.SetValue("rbot.accuracy.weapon.sniper.mindmg", Minawp:GetValue())
        RotationJitter6 = 11
    elseif (RotationJitter6 == 11) then
        gui.SetValue("rbot.accuracy.weapon.sniper.mindmg", Maxawp:GetValue())
        RotationJitter6 = 10
        end
  end
end


callbacks.Register("Draw", SwitchAuto)
callbacks.Register("Draw", SwitchAWP)


local wep_list = {"pistol", "hpistol", "smg", "rifle", "shotgun", "scout", "asniper", "sniper", "lmg",};

callbacks.Register("Draw", function()
    local key = ui_key:GetValue();
    if key == 0 or key == nil then return; end;
    if reset == true then
        for i = 1, 9 do
            cache_baim[i] = gui.GetValue(string.format("rbot.hitscan.mode.%s.bodyaim", wep_list[i]));
        end;
    end;
    if input.IsButtonDown(key) then
        for i = 1, 9 do
            gui.SetValue(string.format("rbot.hitscan.mode.%s.bodyaim", wep_list[i]), 1);
        end;
        reset = false;
    elseif reset == false then
        for i = 1, 9 do
            gui.SetValue(string.format("rbot.hitscan.mode.%s.bodyaim", wep_list[i]), cache_baim[i]);
        end;
        reset = true;
    end;
end);


local function movstandhc()
    velocity = math.sqrt(localPlayer:GetPropFloat( "localdata", "m_vecVelocity[0]" )^2 + localPlayer:GetPropFloat( "localdata", "m_vecVelocity[1]" )^2)
      if Enableautohit:GetValue() then 
    	if velocity > maxVelo then
        gui.SetValue( "rbot.accuracy.weapon.asniper.hitchance", minValue )	-- Moving 	(when Velocity is higher than veloslider Value)
    else
        gui.SetValue( "rbot.accuracy.weapon.asniper.hitchance", maxValue )	-- Standing (when Velocity is lower than veloslider Value)
    end
   end
end

local function sethc()
    minValue = autohitmin:GetValue()
    maxValue = autohitmax:GetValue()
	maxVelo  = autospeed:GetValue()
end


local function localcheck()
    localPlayer = entities.GetLocalPlayer()
    if localPlayer then
        sethc()
        movstandhc()
    end
end

callbacks.Register( "Draw",  localcheck )




local function movstandhc()
    velocity = math.sqrt(localPlayer:GetPropFloat( "localdata", "m_vecVelocity[0]" )^2 + localPlayer:GetPropFloat( "localdata", "m_vecVelocity[1]" )^2)
      if Enableawphit:GetValue() then 
    	if velocity > maxVelo then
        gui.SetValue( "rbot.accuracy.weapon.sniper.hitchance", minValue )	-- Moving 	(when Velocity is higher than veloslider Value)
    else
        gui.SetValue( "rbot.accuracy.weapon.sniper.hitchance", maxValue )	-- Standing (when Velocity is lower than veloslider Value)
    end
   end
end

local function sethc()
    minValue = awphitmin:GetValue()
    maxValue = awphitmax:GetValue()
	maxVelo  = awpspeed:GetValue()
end


local function localcheck1()
    localPlayer = entities.GetLocalPlayer()
    if localPlayer then
        sethc()
        movstandhc()
    end
end

callbacks.Register( "Draw",  localcheck1 )







local function movstandhc()
    velocity = math.sqrt(localPlayer:GetPropFloat( "localdata", "m_vecVelocity[0]" )^2 + localPlayer:GetPropFloat( "localdata", "m_vecVelocity[1]" )^2)
      if Enablescouthit:GetValue() then 
    	if velocity > maxVelo then
        gui.SetValue( "rbot.accuracy.weapon.scout.hitchance", minValue )	-- Moving 	(when Velocity is higher than veloslider Value)
    else
        gui.SetValue( "rbot.accuracy.weapon.scout.hitchance", maxValue )	-- Standing (when Velocity is lower than veloslider Value)
    end
   end
end

local function sethc()
    minValue = scouthitmin:GetValue()
    maxValue = scouthitmax:GetValue()
	maxVelo  = scoutspeed:GetValue()
end


local function localcheck2()
    localPlayer = entities.GetLocalPlayer()
    if localPlayer then
        sethc()
        movstandhc()
    end
end

callbacks.Register( "Draw",  localcheck2 )



















--functions 

local function water()
           draw.Color(35, 35, 35, 255)
           draw.FilledRect(3, 5, 120, 30)
           draw.Color(15, 15, 15, 180)
           draw.FilledRect(8, 10, 115, 25)
           draw.Color(70, 70, 70, 180)
           draw.OutlinedRect(8, 10, 116, 26)
           draw.Color(0, 0, 0, 255)
           draw.OutlinedRect(2, 4, 121, 31)
           draw.Color(70, 70, 70, 180)
           draw.Color(214, 214, 214, 230)
           draw.Text(15, 12, "Ghost")
           draw.Color(159, 202, 43, 230)
           draw.Text(52, 12, "Client") 
           draw.Color(214, 214, 214, 230)
           draw.Text(87, 12, ".net")
end
callbacks.Register( "Draw", water );

