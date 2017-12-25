
function PistolVariantMixin:OnUpdateRender()
 
    local pistolVariant = self.pistolVariant
    local isNebula = 0.0
    if pistolVariant == kPistolVariant.nebula then
        isNebula = 1.0
        pistolVariant = kPistolVariant.anniv
    end
    
    if self:GetRenderModel() ~= nil then
        self:GetRenderModel():SetMaterialParameter("textureIndex", pistolVariant-1)
        self:GetRenderModel():SetMaterialParameter("nebula", isNebula)
    end
    
    local player = self:GetParent()
    if player and player:GetIsLocalPlayer() then
        
        local viewModel = player:GetViewModelEntity()
        if viewModel and viewModel:GetRenderModel() and player:isa("Marine") and player:GetActiveWeapon() == self then
            viewModel:GetRenderModel():SetMaterialParameter("textureIndex", pistolVariant-1)
            viewModel:GetRenderModel():SetMaterialParameter("nebula", isNebula)
        end
        
    end
end