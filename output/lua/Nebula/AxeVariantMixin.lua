
function AxeVariantMixin:OnUpdateRender()
 
    local axeVariant = self.axeVariant
    local isNebula = 0.0
    if axeVariant == kAxeVariant.nebula then
        isNebula = 1.0
        axeVariant = kAxeVariant.anniv
    end
    
    if self:GetRenderModel() ~= nil then
        self:GetRenderModel():SetMaterialParameter("textureIndex", axeVariant-1)
        self:GetRenderModel():SetMaterialParameter("nebula", isNebula)
    end
    
    local player = self:GetParent()
    if player and player:GetIsLocalPlayer() then
        
        local viewModel = player:GetViewModelEntity()
        if viewModel and viewModel:GetRenderModel() and player:isa("Marine") and player:GetActiveWeapon() == self then
            viewModel:GetRenderModel():SetMaterialParameter("textureIndex", axeVariant-1)
            viewModel:GetRenderModel():SetMaterialParameter("nebula", isNebula)
        end
        
    end
end