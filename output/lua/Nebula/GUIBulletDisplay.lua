
local oldSetWeaponVariant = GUIBulletDisplay.SetWeaponVariant
function GUIBulletDisplay:SetWeaponVariant(weaponVariant)
    Log(weaponVariant)
    if weaponVariant == kRifleVariant.nebula then
        weaponVariant = kRifleVariant.red
    end
    oldSetWeaponVariant(self, weaponVariant)
end