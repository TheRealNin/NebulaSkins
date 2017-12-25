
if Client then

    local oldOnUpdateRender = MarineVariantMixin.OnUpdateRender
    function MarineVariantMixin:OnUpdateRender()
        oldOnUpdateRender(self)
        
        local isNebula = 0.0
        if self.variant == kMarineVariant.nebula then
            isNebula = 1.0
            if self:GetRenderModel() ~= nil  then
                self:GetRenderModel():SetMaterialParameter("nebula", isNebula)
            end
        end
        
        
        if self:GetViewModelEntity() and self:GetViewModelEntity():GetRenderModel() ~= nil then
            self:GetViewModelEntity():GetRenderModel():SetMaterialParameter("nebulaHands", isNebula)
        end

    end

end