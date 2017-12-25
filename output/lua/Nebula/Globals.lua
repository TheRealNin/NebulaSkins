

local function AppendToEnum( tbl, key )
	if rawget(tbl,key) ~= nil then
		return
	end
	
	local maxVal = 0
    for k, v in next, tbl do
        if type(v) == "number" and v > maxVal then
            maxVal = v 
        end
    end
	
	rawset( tbl, key, maxVal+1 )
	rawset( tbl, maxVal+1, key )
	
end

AppendToEnum(kMarineVariant, "nebula")
kMarineVariantData[kMarineVariant.nebula] = { displayName = "Nebula", modelFilePart = "_anniv", viewModelFilePart = "_anniv", nebula = true}

AppendToEnum(kExoVariant, "nebula")
kExoVariantData[kExoVariant.nebula] = { displayName = "Nebula", modelFilePart = "_anniv", viewModelFilePart = "_anniv", nebula = true}

AppendToEnum(kAxeVariant, "nebula")
kAxeVariantData[kAxeVariant.nebula] = {
        displayName = "Nebula",
        modelFilePart = "_anniv",
        viewModelFilePart = "",
    }

AppendToEnum(kPistolVariant, "nebula")
kPistolVariantData[kPistolVariant.nebula] =
    {
        displayName = "Nebula",
        modelFilePart = "_anniv",
        viewModelFilePart = "",
    }
    
AppendToEnum(kRifleVariant, "nebula")
kRifleVariantData[kRifleVariant.nebula] =
    {
        displayName = "Nebula",
        modelFilePart = "_anniv",
        viewModelFilePart = "",
    }
    
local oldGetHasVariant = GetHasVariant
function GetHasVariant(data, var, client)
    if data == kMarineVariantData and var == kMarineVariant.nebula then
        return true
    end
    if data == kAxeVariantData and var == kAxeVariant.nebula then
        return true
    end
    if data == kExoVariantData and var == kExoVariant.nebula then
        return true
    end
    if data == kPistolVariantData and var == kPistolVariant.nebula then
        return true
    end
    if data == kRifleVariantData and var == kRifleVariant.nebula then
        return true
    end
    return oldGetHasVariant(data, var, client)
end