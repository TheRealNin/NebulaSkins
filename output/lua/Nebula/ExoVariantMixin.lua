
if Client then

    function ExoVariantMixin:OnUpdateRender()
        local exoVariant = self.exoVariant
        local isNebula = 0.0
        if exoVariant == kExoVariant.nebula then
            isNebula = 1.0
            exoVariant = kExoVariant.anniv
        end
        
        if self:GetRenderModel() ~= nil then
            self:GetRenderModel():SetMaterialParameter("textureIndex", exoVariant-1)
            self:GetRenderModel():SetMaterialParameter("nebula", isNebula)
        end

        if self:isa("Player") and self:GetIsLocalPlayer() then

            local viewModel = self:GetViewModelEntity()
            if viewModel and viewModel:GetRenderModel() then
                viewModel:GetRenderModel():SetMaterialParameter("textureIndex", exoVariant-1)
                viewModel:GetRenderModel():SetMaterialParameter("nebula", isNebula)
            end

        end

    end

end