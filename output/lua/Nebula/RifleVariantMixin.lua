
function RifleVariantMixin:OnUpdateRender()
 
    local rifleVariant = self.rifleVariant
    local isNebula = 0.0
    if rifleVariant == kRifleVariant.nebula then
        isNebula = 1.0
        rifleVariant = kRifleVariant.anniv
    end
    
    if self:GetRenderModel() ~= nil then
        self:GetRenderModel():SetMaterialParameter("textureIndex", rifleVariant-1)
        self:GetRenderModel():SetMaterialParameter("nebula", isNebula)
    end
    
    local player = self:GetParent()
    if player and player:GetIsLocalPlayer() then
        
        local viewModel = player:GetViewModelEntity()
        if viewModel and viewModel:GetRenderModel() and player:isa("Marine") and player:GetActiveWeapon() == self then
            viewModel:GetRenderModel():SetMaterialParameter("textureIndex", rifleVariant-1)
            viewModel:GetRenderModel():SetMaterialParameter("nebula", isNebula)
        end
        
    end
end