---@class ShopItem
---@field id? number internal id number, do not set
---@field name? string item name as referenced in ox_inventory
---@field price number base price of the item
---@field defaultStock? integer the amount of items available in the shop by default
---@field category? string the category of the item in the shop (e.g. 'Snacks', 'Tools', 'Firearms', 'Ammunition', 'Drinks')
---@field license? string the license required to purchase the item
---@field jobs? table<string, number> map of group names to min grade required to access the shop
---@field metadata? table | string metadata for item

---@type table<string, table<string | number, ShopItem>>
local ITEMS = {
	normal = {
        water = {price = 1, defaultStock = 500, category = 'Snacks'},
		sprite = {price = 20, defaultStock = 500, category = 'Snacks'},
		cheetos = {price = 15, defaultStock = 500, category = 'Snacks'},
		dcaramel = {price = 15, defaultStock = 500, category = 'Snacks'},
		diam_bar = {price = 15, defaultStock = 500, category = 'Snacks'},
		doritos = {price = 20, defaultStock = 500, category = 'Snacks'},
		mccoys = {price = 15, defaultStock = 500, category = 'Snacks'},
		milkybar = {price = 15, defaultStock = 500, category = 'Snacks'},
		milkybuttons = {price = 15, defaultStock = 500, category = 'Snacks'},
		milkyway = {price = 15, defaultStock = 500, category = 'Snacks'},
		minieggs = {price = 15, defaultStock = 500, category = 'Snacks'},
		quarter_pounder = {price = 15, defaultStock = 500, category = 'Snacks'},
		quavers = {price = 15, defaultStock = 500, category = 'Snacks'},
		ripple = {price = 15, defaultStock = 500, category = 'Snacks'},
		sensations = {price = 15, defaultStock = 500, category = 'Snacks'},
		squares = {price = 15, defaultStock = 500, category = 'Snacks'},
		twix = {price = 15, defaultStock = 500, category = 'Snacks'},
		twirl = {price = 15, defaultStock = 500, category = 'Snacks'},
		yorkie = {price = 15, defaultStock = 500, category = 'Snacks'},
        lighter = { price = 1, defaultStock = 50, category = 'Various'},
		rolling_paper = { price = 1, defaultStock = 5000, category = 'Various'},
		bandage =  {price = 10, defaultStock = 20, category = 'Various'},
		fishbait =  {price = 10, defaultStock = 20, category = 'Various'},
		fishingrod = {price = 50, defaultStock = 20, category = 'Various'},
		pickaxe = {price = 50, defaultStock = 20, category = 'Various'}
	},
	bar = {
		water_bottle = { price = 1, defaultStock = 50 },
        dusche = { price = 6, defaultStock = 50 },
		pisswasser = { price = 7, defaultStock = 50 },
		pisswasser2 = { price = 7, defaultStock = 50 },
		pisswasser3 = { price = 7, defaultStock = 50 },
		logger = { price = 6, defaultStock = 50 },
		whiskey = { price = 20, defaultStock = 50 },
		vodka = { price = 12, defaultStock = 50 }
	},
    jail = {
		{ name = 'WEAPON_GRAYKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_GREENKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_ORANGEKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_PINKKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_PURPLEKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_REDKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_WHITEKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_YELLOWKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_SCREWD', price = 25, defaultStock = 250,        category = 'Point Defense'},
		whiskey = { price = 20, defaultStock = 50 },
		vodka = { price = 12, defaultStock = 50 }
	},
	hardware = {
		{ name = 'lockpick', price = 20, defaultStock = 50, category = 'Tools' },
	},
	weapons = {
		{ name = 'ammo-rifle-box', price = 80, defaultStock = 250, license = 'weapon',        category = 'Ammunition' },
		{ name = 'ammo-45', price = 160, defaultStock = 250, license = 'weapon',        category = 'Ammunition'},
		{ name = 'ammo-rifle-box', price = 320, defaultStock = 250, license = 'weapon',        category = 'Ammunition'},
		{ name = 'ammo-rifle2-box', price = 400, defaultStock = 250, license = 'weapon',        category = 'Ammunition'},
		{ name = 'ammo-shotgun-box', price = 400, defaultStock = 250, license = 'weapon',        category = 'Ammunition'},
		{ name = 'at_flashlight', price = 100, defaultStock = 250, license = 'weapon',        category = 'Attachments'},
		{ name = 'at_suppressor_heavy', price = 1000, defaultStock = 250, license = 'weapon',        category = 'Attachments'},
		{ name = 'at_grip', price = 120, defaultStock = 250, license = 'weapon',        category = 'Attachments'},
		{ name = 'at_clip_extended_pistol', price = 1000, defaultStock = 250, license = 'weapon',        category = 'Attachments'},
		{ name = 'at_clip_extended_rifle', price = 1200, defaultStock = 250, license = 'weapon',        category = 'Attachments'},
		{ name = 'at_scope_small', price = 600, defaultStock = 250, license = 'weapon',        category = 'Attachments'},
		{ name = 'at_scope_medium', price = 1000, defaultStock = 250, license = 'weapon',        category = 'Attachments'},
		{ name = 'WEAPON_GRAYKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_GREENKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_ORANGEKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_PINKKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_PURPLEKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_REDKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_WHITEKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_YELLOWKNIFE', price = 200, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_SCREWD', price = 25, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_SLEDGEH', price = 80, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_OPPSLUGGER', price = 55, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_WOODAXE', price = 75, defaultStock = 250,        category = 'Point Defense'},
		{ name = 'WEAPON_BAT', price = 30, defaultStock = 250,        category = 'Point Defense'},
		--{ name = 'WEAPON_SICKEL', price = 30, defaultStock = 250, license = 'weapon',        category = 'Point Defense'},
		--{ name = 'WEAPON_DOUBLEAXE', price = 120, defaultStock = 250, license = 'weapon',        category = 'Point Defense'},
		{ name = 'WEAPON_357SNUB', price = 800, metadata = { registered = true }, license = 'weapon', defaultStock = 250,        category = 'Firearms' },
		{ name = 'WEAPON_FN509HUNT', price = 642, metadata = { registered = true }, license = 'weapon', defaultStock = 250,        category = 'Firearms' },
		{ name = 'WEAPON_G19BEAM', price = 600, metadata = { registered = true }, license = 'weapon', defaultStock = 250,        category = 'Firearms' },
		{ name = 'WEAPON_G22', price = 520, metadata = { registered = true }, license = 'weapon', defaultStock = 250,        category = 'Firearms' },
		{ name = 'WEAPON_G43X', price = 480, metadata = { registered = true }, license = 'weapon', defaultStock = 250,        category = 'Firearms' },
		{ name = 'WEAPON_PTX22', price = 300, metadata = { registered = true }, license = 'weapon', defaultStock = 250,        category = 'Firearms' },
		{ name = 'WEAPON_R580', price = 800, metadata = { registered = true }, license = 'weapon', defaultStock = 250,        category = 'Firearms' },
		{ name = 'WEAPON_SW357', price = 965, metadata = { registered = true }, license = 'weapon', defaultStock = 250,        category = 'Firearms' },
		{ name = 'WEAPON_T247', price = 260, metadata = { registered = true }, license = 'weapon', defaultStock = 250,        category = 'Firearms' },
		{ name = 'WEAPON_TANGLOCK', price = 650, metadata = { registered = true }, license = 'weapon', defaultStock = 250,        category = 'Firearms' },
		{ name = 'WEAPON_SWMP9', price = 565, metadata = { registered = true }, license = 'weapon', defaultStock = 250,        category = 'Firearms' }
	},
	electronics = {
		{ name = 'phone', price = 60 },
		{ name = 'radio', price = 50 },
		{ name = 'dslrcamera', price = 250 },
		{ name = 'binoculars', price = 50 },
		{ name = 'electronickit', price = 150 },
		{ name = 'drill', price = 100 },
		{ name = 'gatecrack', price = 100 },
		{ name = 'trojan_usb', price = 100 },
	},
}

local newFormatItems = {}
for category, categoryItems in pairs(ITEMS) do
	local newCategoryItems = {}

	for item, data in pairs(categoryItems) do
		if not data.name then
			data.name = tostring(item)
		end

		newCategoryItems[#newCategoryItems + 1] = data
	end

	table.sort(newCategoryItems, function(a, b)
		return a.name < b.name
	end)

	newFormatItems[category] = newCategoryItems
end

return newFormatItems
