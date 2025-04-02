-- for k in pairs(package.loaded) do
--     if k:match(".*hickey.*") then
--         package.loaded[k] = nil
--     end
-- end

require("hickey").colorscheme()
