    local function class()
           local cls = {}
           cls.__index = cls
           return setmetatable(cls, {__call = function (c, ...)
               local instance = setmetatable({}, cls)
               if cls.__init then
                   cls.__init(instance, ...)
               end
               return instance
           end})
    end
AutoLeveler = class()

function AutoLeveler:Init()

	self.Sequence = { 
	
					aatrox = { SpellSlot.W, SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.E, SpellSlot.W, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.Q},
	
					ahri = { SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},
	
					akali = { SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W},

					alistar = { SpellSlot.Q, SpellSlot.W, SpellSlot.E, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},
	
					amumu = { SpellSlot.W, SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.Q, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W},
	
					anivia = { SpellSlot.Q, SpellSlot.E, SpellSlot.E, SpellSlot.W, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.Q, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W},

					annie = { SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},
				
					ashe = { SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.E, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.Q, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},
				
					aurelionSol = { SpellSlot.W, SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.Q, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},

					azir = { SpellSlot.W, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},

					bard = { SpellSlot.Q, SpellSlot.W, SpellSlot.E, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},	

					blitzcrank = { SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},					

					brand = { SpellSlot.W, SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.Q, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},		

					braum = { SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W},

					caitlyn = { SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},

					camille = { SpellSlot.W, SpellSlot.E, SpellSlot.Q, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W},
	
					cassiopeia = { SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.Q, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W},

					chogath = { SpellSlot.E, SpellSlot.W, SpellSlot.Q, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.W, SpellSlot.E, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.Q},
					
					corki = { SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W},
					
					darius = { SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W},
					
					dianna = { SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W},

					dr.mundo = { SpellSlot.Q, SpellSlot.W, SpellSlot.E, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.W, SpellSlot.E, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W, SpellSlot.Q, SpellSlot.Q, SpellSlot.Q, SpellSlot.Q, SpellSlot.Q},			
					
					draven  = { SpellSlot.Q, SpellSlot.W, SpellSlot.E, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},

					ekko = { SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W},

					elise = { SpellSlot.Q, SpellSlot.W, SpellSlot.E, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},

					evelynn = { SpellSlot.Q, SpellSlot.W, SpellSlot.E, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},
					
					ezreal =  = { SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W},
					
					jax = { SpellSlot.W, SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.Q, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},
	
					kalista = { SpellSlot.E, SpellSlot.Q, SpellSlot.W, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.Q, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W},
					
					katarina = { SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W},
					
					kogmaw = { SpellSlot.W, SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.Q, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},
					
					ornn = { SpellSlot.W, SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.Q, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},
					
					poppy = { SpellSlot.Q, SpellSlot.E, SpellSlot.W, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W},
					
					twistedfate = { SpellSlot.Q, SpellSlot.W, SpellSlot.E, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},	
					
					twitch = { SpellSlot.E, SpellSlot.W, SpellSlot.Q, SpellSlot.E, SpellSlot.Q, SpellSlot.R, SpellSlot.E, SpellSlot.E, SpellSlot.E, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.Q, SpellSlot.W, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W},
					
					xerath = { SpellSlot.Q, SpellSlot.W, SpellSlot.E, SpellSlot.Q, SpellSlot.Q, SpellSlot.R, SpellSlot.Q, SpellSlot.W, SpellSlot.Q, SpellSlot.W, SpellSlot.R, SpellSlot.W, SpellSlot.W, SpellSlot.E, SpellSlot.E, SpellSlot.R, SpellSlot.E, SpellSlot.E},
					
					}

	self.SpellToLevelUp = true
	self.lastLevel = myHero.experience.level

	AddEvent(Events.OnTick, function() self:OnTick() end)
end

function AutoLeveler:OnTick()
	if self.SpellToLevelUp then 
		myHero.spellbook:LevelSpell(self.Sequence[string.lower(myHero.charName)][myHero.experience.level])
		self.SpellToLevelUp = false 
	end
	if myHero.experience.level ~= self.lastLevel then
		self.lastLevel = myHero.experience.level
		self.SpellToLevelUp = true
	end
end

function OnLoad()
	print("FF15 Auto Level loaded")
	PrintChat('FF15 Auto Level loaded')
	AutoLeveler:Init()
end