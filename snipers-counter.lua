Hooks:PostHook(EnemyManager, "update", "snipers-counter", function(self)
    local count = 0
    for _, data in pairs(self:all_enemies()) do
        count = count + (data.unit:base():has_tag("sniper") and 1 or 0)
    end
    if count ~= self.snipers then
        self.snipers = count
        managers.hud:show_hint({text = "snipers: " .. count})
    end
end)
