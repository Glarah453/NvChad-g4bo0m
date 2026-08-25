-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "gruvbox",

	-- Aquí es donde NvChad v3.0 procesa los cambios de color reales
  hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},

	-- ==========================================================
	-- USAR HL_ADD PARA ROMPER LA HERENCIA Y FORZAR EL COLOR
	-- ==========================================================
	hl_add = {
		-- 1. Restaurar el resaltado lógico de Jinja para que NO se vea crema plano
		["@keyword.directive.jinja"] = { fg = "#fe8019" }, -- Naranja/Amarillo Gruvbox para la lógica
		-- ["@keyword.jinja"] = { fg = "#fb4934", bold = true }, -- Rojo para 'for', 'if', 'include'
		["@keyword.repeat.jinja"] = { fg = "#d3869b", bold = true }, -- Rojo para 'for', 'if', 'include'
		["@variable.jinja"] = { fg = "#8ec07c" }, -- Aqua/Verde claro para las variables internas

		-- 2. Forzar que TODAS las llaves { y } sean Verdes (#b8bb26)
		["@jinja.llave"] = { fg = "#b8bb26", bold = true },

		-- 3. Forzar que TODOS los porcentajes % sean Rojos (#fb4934)
		["@jinja.porcentaje"] = { fg = "#fb4934", bold = true },
	},


	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	--
	-- 	-- ==========================================================
	-- 	-- CONFIGURACIÓN DE COLORES JINJA (DIRECTO EN HEXADECIMAL)
	-- 	-- ==========================================================
	--
	-- 	-- Cambia los bloques {% y %} a Rojo Brillante Gruvbox
	-- 	["@keyword.directive.jinja"] = { fg = "#fb4934", bold = true },
	--
	-- 	-- Cambia las llaves {{ y }} a Verde Brillante Gruvbox
	-- 	-- (Añadimos los tres nombres posibles que toma el parser para no fallar)
	-- 	["@variable.jinja"] = { fg = "#b8bb26", bold = true },
	-- 	["@punctuation.bracket.jinja"] = { fg = "#b8bb26", bold = true },
	-- 	["@variable.parameter.django"] = { fg = "#b8bb26", bold = true },
	-- },
	--  hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	--
	-- 	-- ==========================================================
	-- 	-- SOLUCIÓN REAL: VINCULAR A LOS COLORES NATIVOS DEL TEMA
	-- 	-- ==========================================================
	--
	-- 	-- Vincula los bloques {% y %} al color Rojo de Gruvbox
	-- 	["@keyword.operator.django"] = { link = "Red" },
	-- 	["@tag.delimiter.htmldjango"] = { link = "Red" },
	-- 	["@tag.delimiter.jinja"] = { link = "Red" },
	--
	-- 	-- Vincula las llaves {{ y }} al color Verde de Gruvbox
	-- 	["@variable.parameter.django"] = { link = "Green" },
	-- 	["@punctuation.bracket.jinja"] = { link = "Green" },
	-- 	["@variable.jinja"] = { link = "Green" },
	-- },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}

return M
