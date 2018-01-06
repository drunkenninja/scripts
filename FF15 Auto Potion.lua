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
AutoPot = class()

function AutoPot:_init()
    self.potionID = {2003, 2031, 2032, 2033, 2010}

     AddEvent(Events.OnTick, function() self:OnTick() end)
end

function AutoPot:OnTick()
    
    if not myHero.isDead then self:CheckUse() end
end

function AutoPot:GetPotion()
    for uid, id in pairs (self.potionID) do
        local node = myHero.inventory:HasItem(id)
        if node ~= nil and myHero.spellbook:CanUseSpell(node.spellSlot) == SpellState.Ready then
            return node.spellSlot
        end
    end
    return nil
end

function AutoPot:CheckUse()
    if myHero.healthPercent < 70 then
        local slot = self:GetPotion()
        if slot ~= nil then myHero.spellbook:CastSpell(slot, myHero.networkId) end
    end
end

function OnLoad()
	print("FF15 Auto Potion loaded")
	PrintChat('FF15 Auto Potion loaded')
    AutoPot:_init()
end