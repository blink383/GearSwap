-- Local Settings, setting the zones prior to use
toau_zones = S{"Leujaoam Sanctum","Mamool Ja Training Grounds","Lebros Cavern","Periqia","Ilrusi Atoll",
        "Nyzul Isle","Bhaflau Remnants","Arrapago Remnants","Silver Sea Remnants","Zhayolm Remnants"}

naSpells = S{"Paralyna","Silena","Viruna","Erase","Stona","Blindna","Poisona"}

resSpells = S{"Barstonra","Barwatera","Baraera","Barfira","Barblizzara","Barthundra",
	"Barstone","Barwater","Baraero","Barfire","Barblizzard","Barthunder"}


-- Start Functions here
-- Gear Sets
function get_sets()
		
	sets.aftercast_Idle_refresh = {main="Owleyes",sub="Genbu's Shield",ammo="Incantor Stone",
		head="Wivre Hairpin",neck="Twilight Torque",ear1="Novia Earring",ear2="Loquacious Earring",
		body="Bokwus Robe",hands="Serpentes Cuffs",ring1="Dark Ring",ring2="Jelly Ring",
		back="Umbra Cape",waist="Witful Belt",legs="Nares Trews",feet="Serpentes Sabots"}
	
	sets.aftercast_Move = set_combine(sets.aftercast_Idle_refresh,{feet="Desert Boots +1"})

	sets.aftercast_Idle = sets.aftercast_Idle_refresh
	
	sets.precast_FastCast = {ammo="Incantor Stone",head="Nahtirah Hat",ear2="Loquacious Earring",
		hands={"Hagondes Cuffs",augments={"Fast Cast+4"}},
		neck="Orison Locket",back="Swith Cape",legs="Orvail Pants +1",feet="Chelona Boots +1"}
	sets.precast_Devotion = {}

	sets.Resting = {main="Boonwell Staff",sub="Mephitis Grip",
		head="Orvail Corona +1",neck="Grandiose Chain",ear1="Antivenom Earring",ear2="Loquacious Earring",
		body="Bokwus Robe",back="Umbra Cape",legs="Nares Trews",feet="Chelona Boots +1"}
	
	sets.midcast_EnfeeblingMagic = {main="Eminent Wand",sub="Genbu's Shield",ammo="Savant's Treatise",
		head="Nahtirah Hat",neck="Enfeebling Torque",ear1="Lifestorm Earring",ear2="Psystorm Earring",
		body="Bokwus robe",hands="Hagondes Cuffs",ring1="Omega Ring",ring2="Tamas Ring",
		back="Merciful Cape",waist="Cognition Belt",legs="Orvail Pants +1",feet="Weatherspoon Boots"}
	
	sets.midcast_BarSpells_Solace = {main="Beneficus",head="Orison Cap +2",body="Orison Bliaud +2",hands="Orison Mitts +2",
		legs="Cleric's Pantaloons +2",feet="Orison Duckbills +2"}
	sets.midcast_Barspells_noSolace = set_combine(sets.midcast_BarSpells_Solace,{body="Blessed Briault"})

	sets.midcast_EnhancingMagic = {main="Kirin's Pole",sub="Fulcio Grip",ammo="Incantor Stone",
		head="Nahtirah Hat",neck="Orison Locket",ear1="Lifestorm Earring",ear2="Loquacious Earring",
		back="Swith Cape",waist="Witful Belt",legs="Orvail Pants +1",feet="Chelona Boots +1"}
	
	sets.midcast_MAB = {}
	sets.midcast_Regen = {body="Cleric's Briault +2",hands="Orison Mitts +2",legs="Theophany pantaloons"}
	sets.midcast_Auspice = {feet="Orison Duckbills +2"}
	sets.midcast_Cursna = {main="Beneficus",sub="Genbu's Shield",
		head="Hyksos Khat",neck="Malison medallion",body="Orison Bliaud +2",hands="Hieros mittens",
		ring1="Ephedra ring", ring2="Ephedra ring",back="Mending cape",legs="Theophany pantaloons"}

	sets.midcast_Cure = {main="Tamaxchi",sub="Genbu's Shield",head="Theophany cap",neck="Orison Locket",
			body="Orison Bliaud +2",hands="Bokwus Gloves",back="Tempered Cape",legs="Orison Pantaloons +2"}
	
	sets.midcast_Stoneskin = {main="Kirin's Pole",neck="Stone Gorget",waist="Siegel Sash",legs="Shedir Seraweels"}
	
	sets.midcast_DebuffRemoval = {}
			
	sets.Obi = {}
	sets.Obi.Fire = {waist='Karin Obi',back='Twilight Cape'}
	sets.Obi.Earth = {waist='Dorin Obi',back='Twilight Cape'}
	sets.Obi.Water = {waist='Suirin Obi',back='Twilight Cape'}
	sets.Obi.Wind = {waist='Furin Obi',back='Twilight Cape'}
	sets.Obi.Ice = {waist='Hyorin Obi',back='Twilight Cape'}
	sets.Obi.Thunder = {waist='Rairin Obi',back='Twilight Cape'}
	sets.Obi.Light = {waist='Korin Obi',back='Twilight Cape'}
	sets.Obi.Dark = {waist='Anrin Obi',back='Twilight Cape'}
	
	sets.staves = {}
	
	sets.staves.damage = {}
	
	sets.staves.accuracy = {}
	sets.staves.damage.Thunder = {main="Apamajas II"}


end

-- --- Precast ---

function precast(spell)
	if spell.skill=='ElementalMagic' and spell.casttime < 3 then
		equip(sets.midcast_ElementalMagic)
		if spell.element == world.weather_element or spell_element == world.day_element and sets.Obi[spell.element] then
			equip(sets.Obi[spell.element])
		end
	else
		equip(sets['precast_FastCast'])
	end
end
-- --- MidCast ---
function midcast(spell)
	if spell.skill=='HealingMagic' then	
		if S{"Cure*","Curaga*"}:contains(spell.name) then 
			equip(sets.midcast_Cure)
		elseif naSpells:contains(spell.name) then
			equip(sets.midcast_DebuffRemoval)
		elseif S{"Regen*"}:contains(spell.name) then
			equip(sets.midcast_Regen)
		elseif spell.name == 'Cursna' then
			eqip(sets.midcast_Cursna)
		else
		equip(sets.midcast_DebuffRemoval)
	end
	elseif spell.skill=="ElementalMagic" then
		equip(sets.midcast_ElementalMagic)
		if spell.element == world.weather_element or spell_element == world.day_element then
			equip(sets.Obi[spell.element])
		end
	
	elseif spell.english == 'Stoneskin' then
		equip(sets['midcast_Stoneskin'])
	elseif spell.skill == 'EnhancingMagic' then
		if spell.english == 'Sneak' and spell.target.name == player.name then
			send_command('@wait 1.8;cancel 71;')
		elseif spell.english == 'Blink' then
			send_command('@wait 3.8;cancel 36;')
		elseif resSpells:contains(spell.name) then
			if buffactive['Afflatus Solace'] then
                        	equip(sets.midcast_BarSpells_Solace)
			else
				eqip(sets.midcast_BarSpells_noSolace)
			end
		end
		weathercheck(spell.element,sets['midcast_'..spell.skill])
	end
end		

-- --- Aftercast ---

function aftercast(spell)
	if toau_zones:contains(zone) then
		equip(sets.aftercast_Idle,{ring1="Balrahn's Ring"})
	else
		equip(sets.aftercast_Idle)
	end
	if spell.english == 'Sleep' or spell.english == 'Sleepga' then
		send_command('@wait 50;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
	elseif spell.english == 'Sleep II' or spell.english == 'Sleepga II' then
		send_command('@wait 80;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
	elseif spell.english == 'Break' or spell.english == 'Breakga' then
		send_command('@wait 20;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
	elseif spell.english == 'Repose' then
		send_command('@wait 80;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
	end
end

-- Status Change - ie. Resting

function status_change(new,tab)
	if new == 'Resting' then
		equip(sets['Resting'])
	else
		equip(sets['aftercast_Idle'])
	end
end

-- Buff Change, ie. Sandstorm, Weakness

function buff_change(status,gain_or_loss)
	if buffactive['Sandstorm'] then
		sets.aftercast_Idle = sets.aftercast_Move
		send_command('@wait 1;	input /echo ------- Processed Movement Speed Gear Swap -------')
	else 
		sets.aftercast_Idle = sets.aftercast_Idle_Refresh
		send_command('@wait 1;  input /echo ------- Processed Refresh Gear Swap -------')
	end
	equip(sets.aftercast_Idle)
end

-- Self Commands -- ie. Defender 

function self_command(command)
	if buffactive['Sandstorm'] then
		sets.aftercast_Idle = sets.aftercast_Move
		send_command('@wait 1;  input /echo ------- Processed Movement Speed Gear Swap -------')
	else
	        sets.aftercast_Idle = sets.aftercast_Idle_Refresh
		send_command('@wait 1;  input /echo ------- Processed Refresh Gear Swap -------')
        end
	equip(sets.aftercast_Idle)
end

-- This function is user defined, but never called by GearSwap itself. It's just a user function that's only called from user functions. I wanted to check the weather and equip a weather-based set for some spells, so it made sense to make a function for it instead of replicating the conditional in multiple places.

function weathercheck(spell_element,set)
	if spell_element == world.weather_element or spell_element == world.day_element then
		equip(set,sets['Obi_'..spell_element])
	else
		equip(set)
	end
end
