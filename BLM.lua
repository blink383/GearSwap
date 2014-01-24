function get_sets()
		
	sets.aftercast_Idle_Refresh = {main="Owleyes",sub="Genbu's Shield",
		head="Hagondes Hat",neck="Wiglen Gorget",ear1="Novia Earring",ear2="Loquacious Earring",
		body="Hagondes Coat",hands="Serpentes Cuffs",ring1="Sangoma Ring",ring2="Jelly Ring",
		back="Umbra Cape",waist="Witful Belt",legs="Orvail Pants +1",feet="Serpentes Sabots"}
	
	sets.aftercast_Idle = sets.aftercast_Idle_Refresh
	
	sets.precast = {}
	sets.midcast = {}

	sets.precast_FastCast = {main="Atinian Staff +1",sub="Vivid Strap",ammo="Impatiens",
		head="Nahtirah Hat",ear2="Loquacious Earring",ring1="Prolix Ring",ring2="Veneficium Ring",
		waist="Witful Belt",back="Ogapepo Cape",legs="Orvail Pants +1",feet="Chelona Boots +1"}
	
	sets.Resting = {main="Boonwell Staff",sub="Zuuxowu Grip",
		head="Nahtirah Hat",neck="Twilight Torque",ear1="Antivenom Earring",ear2="Loquacious Earring",
		body="Hagondes Coat",hands="Nares Cuffs",ring1="Sangoma Ring",ring2="Maquette Ring",
		back="Umbra Cape",legs="Nares Trews",feet="Chelona Boots +1"}
	
	sets.midcast_ElementalMagic = {main="Atinian Staff +1",sub="Zuuxowu Grip",ammo="Dosis Tathlum",
		head="Buremte Hat",neck="Eddy Necklace",ear1="Friomisi Earring",ear2="Novio Earring",
		body="Bokwus Robe",hands="Hagondes Cuffs",ring1="Icesoul Ring",ring2="Icesoul Ring",
		back="Bane Cape",waist="Sekhmet corset",legs="Hagondes Pants",feet="Spaekona's Sabots +1"}

	sets.midcast_Stun = {main="Apamajas II",sub="Mephitis Grip",
		head="Nahtirah Hat",neck="Aesir Torque",ear1="Lifestorm Earring",ear2="Psystorm Earring",
		body="Hagondes Coat",hands="Repartie Gloves",ring1="Sangoma Ring",ring2="Maquette Ring",
		back="Merciful Cape",waist="Witful Belt",legs="Orvail Pants +1",feet="Chelona Boots +1"}

	sets.midcast_DarkMagic = {main="Atinian Staff +1",sub="Arbuda Grip",ammo="Impatiens",
		head="Appetence Crown",neck="Aesir Torque",ear1="Hirudinea Earring",ear2="Loquacious Earring",
		body="Hedera Cotehardie",hands="Ayao's Gages",ring1="Balrahn's Ring",ring2="Icesoul Ring",
		back="Merciful Cape",waist="Ninurta's Sash",legs="Spaekona's Tonban +1",feet="Goetia Sabots +2"}
	
	sets.midcast_EnfeeblingMagic = {main="Atinian Staff +1",sub="Mephitis Grip",ammo="Impatiens",
		head="Nahtirah Hat",neck="Eddy Necklace",ear1="Lifestorm Earring",ear2="Psystorm Earring",
		body="Hedera Cotehardie",hands="Hagondes Cuffs",ring1="Sangoma Ring",ring2="Maquette Ring",
		back="Merciful Cape",waist="Cascade Belt",legs="Orvail Pants",feet="Rubeus Boots"}
	
	sets.midcast_Impact = {main="Atinian Staff +1",sub="Wizzan Grip",ammo="Witchstone",
		neck="Eddy Necklace",ear1="Hecate's Earring",ear2="Novio Earring",
		hands="Yaoyotl Gloves",ring1="Strendu Ring",ring2="Icesoul Ring",
		back="Searing Cape",waist="Maniacus Sash",legs="Hagondes Pants",feet="Bokwus Boots"}

	sets.precast_Stun = {main="Apamajas I",sub="Vivid Strap",ranged="Impatiens",
		head="Nahtirah Hat",ear2="Loquac. Earring",body="Hagondes Coat",hands="Repartie Gloves",
		ring1="Prolix Ring",ring2="Veneficium Ring",back="Swith Cape +1",waist="Witful Belt",
		legs="Orvail Pants +1",feet="Chelona Boots +1"}
		
	
	sets.midcast_Cure = {main="Tamaxchi",sub="Genbu's Shield",hands="Bokwus Gloves",back="Tempered Cape",legs="Nares Trews"}
	
	sets.Obi = {}
	sets.Obi.Fire = {waist='Karin Obi',back='Twilight Cape',lring='Zodiac Ring'}
	sets.Obi.Earth = {waist='Dorin Obi',back='Twilight Cape',lring='Zodiac Ring'}
	sets.Obi.Water = {waist='Suirin Obi',back='Twilight Cape',lring='Zodiac Ring'}
	sets.Obi.Wind = {waist='Furin Obi',back='Twilight Cape',lring='Zodiac Ring'}
	sets.Obi.Ice = {waist='Hyorin Obi',back='Twilight Cape',lring='Zodiac Ring'}
	sets.Obi.Thunder = {waist='Rairin Obi',back='Twilight Cape',lring='Zodiac Ring'}
	sets.Obi.Light = {waist='Korin Obi',back='Twilight Cape',lring='Zodiac Ring'}
	sets.Obi.Dark = {waist='Anrin Obi',back='Twilight Cape',lring='Zodiac Ring'}
	
	sets.staves = {}
	
	sets.staves.damage = {}
	sets.staves.damage.Fire = {main="Atar I"}
	sets.staves.damage.Earth = {main="Vishrava I"}
	sets.staves.damage.Water = {main="Haoma I"}
	sets.staves.damage.Wind = {main="Vayuvata I"}
	sets.staves.damage.Ice = {main="Vourukasha I"}
	sets.staves.damage.Thunder = {main="Apamajas I"}
	
	sets.staves.accuracy = {}
	sets.staves.accuracy.Fire = {main="Atar II"}
        sets.staves.accuracy.Earth = {main="Vishrava II"}
	sets.staves.accuracy.Water = {main="Haoma II"}
	sets.staves.accuracy.Wind = {main="Vayuvata II"}
	sets.staves.accuracy.Ice = {main="Vourukasha II"}
	sets.staves.accuracy.Thunder = {main="Apamajas II"}
	
	stuntarg = ''


end

function precast(spell)
	if spell.english == 'Impact' then
		equip(sets['precast_FastCast'],{body="Twilight Cloak"})
		if not buffactive['elemental seal'] then
			add_to_chat(8,'--------- Elemental Seal is down ---------')
		end
	
	elseif spell.skill=='ElementalMagic' and spell.casttime < 3 then
		equip(sets.midcast_ElementalMagic)
		if spell.element == 'Earth' then
			equip({neck="Quanpur Necklace"})
		end
		if spell.element == world.weather_element or spell_element == world.day_element and sets.Obi[spell.element] then
			equip(sets.Obi[spell.element])
		end
	elseif spell.english == 'Stun' then
		equip(sets['precast_Stun'])
	else
		equip(sets['precast_FastCast'])
	end
end

function midcast(spell)
	if string.find(spell.english,'Cur') then 
		equip(sets.midcast_Cure)
	elseif spell.english == 'Impact' then
		local tempset = sets['midcast_Impact']
		tempset['body'] = 'Twilight Cloak'
		tempset['head'] = empty
		equip(tempset)
		if spell.element == world.weather_element or spell_element == world.day_element then
			equip(sets.Obi[spell.element])
		end
		if sets.staves.damage[spell.element] then
			equip(sets.staves.damage[spell.element])
		end
	elseif spell.skill=="ElementalMagic" then
			equip(sets.midcast_ElementalMagic)
			if spell.element=='Earth' then
				equip({neck="Quanpur Necklace"})
			end
			if spell.element == world.weather_element or spell_element == world.day_element then
				equip(sets.Obi[spell.element])
			end
	elseif spell.english == 'Stun' then
		equip(sets['midcast_Stun'])
	elseif spell.english == 'Stoneskin' then
		equip(sets['midcast_Stoneskin'])
	elseif spell.skill == 'EnhancingMagic' then
		weathercheck(spell.element,sets['midcast_'..spell.skill])
	end
	if spell.english == 'Sneak' then
		send_command('@wait 1.8;cancel 71;')
	end
end		

function aftercast(spell)
	equip(sets['aftercast_Idle'])
	
	if spell.english == 'Sleep' or spell.english == 'Sleepga' then
		send_command('@wait 50;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
	elseif spell.english == 'Sleep II' or spell.english == 'Sleepga II' then
		send_command('@wait 80;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
	elseif spell.english == 'Break' or spell.english == 'Breakga' then
		send_command('@wait 20;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
	end
end

function status_change(new,tab)
	if new == 'Resting' then
		equip(sets['Resting'])
	else
		equip(sets['aftercast_Idle'])
	end
end

function buff_change(status,gain_or_loss)
	equip(sets.aftercast_Idle)
end

	

function self_command(command)
end



-- This function is user defined, but never called by GearSwap itself. It's just a user function that's only called from user functions. I wanted to check the weather and equip a weather-based set for some spells, so it made sense to make a function for it instead of replicating the conditional in multiple places.

function weathercheck(spell_element,set)
	if spell_element == world.weather_element or spell_element == world.day_element then
		equip(set,sets['Obi_'..spell_element])
	else
		equip(set)
	end
end
