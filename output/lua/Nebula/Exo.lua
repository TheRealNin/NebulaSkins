if Client then
    local oldOnUpdateRender = Exo.OnUpdateRender
    function Exo:OnUpdateRender()
        oldOnUpdateRender(self)
        
        local isNebula = 0.0
        if self.exoVariant == kExoVariant.nebula then
            isNebula = 1.0
        end
        if self:GetRenderModel() ~= nil then
            self:GetRenderModel():SetMaterialParameter("nebula", isNebula)
        end
        
    end
    
end