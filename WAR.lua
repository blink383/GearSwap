-- Tables of Data
toau_zones = S{"Leujaoam Sanctum","Mamool Ja Training Grounds","Lebros Cavern","Periqia","Ilrusi Atoll",
        "Nyzul Isle","Bhaflau Remnants","Arrapago Remnants","Silver Sea Remnants","Zhayolm Remnants"}

abyssea_zones = S{"Abyssea - Konschtat","Abyssea - La Theine","Abyssea - Tahrongi","Abyssea - Attohwa",
		"Abyssea - Misareaux","Abyssea - Vunkerl","Abyssea - Altepa","Abyssea - Grauberg",
		"Abyssea - Uleguerand","Abyssea - Empyreal Paradox"}

strength_ws = S{"Steel Cyclone","King's Justice","Fell Cleave","Metatron Torment","Sanguine Blade","Upheaval","Herculean Slash",
		"Resolution"}

crithit_ws = S{"Ukko's Fury","Raging Rush"}

-- Functions
-- Gear Sets go here
function get_sets()				
	sets.precast = {}
-- JA Sets
	sets.precast['Warcry'] = {head="War. mask +2"}
	sets.precast['Tomahawk'] = {ammo="Thr. tomahawk"}
	sets.precast['Seigan'] = {}
	sets.precast["Warrior's Charge"] = {legs="Warrior's cuisses +2"}
	sets.precast['Blood Rage'] = {hands="Hct. mittens +1"}
	sets.precast['Aggressor'] = {head="Pummeler's Mask",body="Warrior's Lorica +2"}
	sets.precast['Berserk'] = {feet="War. Calligae +2"}
	sets.precast['Mighty Strikes'] = {hands="Warrior's muffler's +2"}
-- Subjob JA Sets
	sets.precast.FastCast = {ear1="Loquac. earring"}
	sets.precast.Waltz = {head="Yaoyotl helm",neck="Apathy gorget",body="Cizin mail",hands="Cizin mufflers",
                ring2="Dark Ring",back="Shadow Mantle",legs="Cizin Breeches",feet="Ejekamal boots"}
-- WS Sets
	sets.WS = {}
	sets.precast.Str_Ws = {ammo="Ravager's orb",head="Otomi helm",ear1="Ravager's Earring",ear2="Brutal Earring",
		body="Phorcys Korazin",hands="Cizin mufflers",ring1="Strigoi Ring",ring2="Rajas Ring",
		back="Mauler's Mantle",legs="Cizin breeches",feet="Karieyh sollerets"}
        sets.precast.Crit_Ws = {ammo="Ravager's orb",head="Ravager's mask +2",ear1="Moonshade Earring",ear2="Brutal Earring",
                body="Phorcys Korazin",hands="Cizin mufflers",ring1="Strigoi Ring",ring2="Rajas Ring",
                back="Rancorous Mantle",legs="Cizin breeches",feet="Rvg. calligae +2"}
	sets.precast.SACrit ={hands="Hct. mittens +1",back="Cavaros mantle",feet="Rvg. calligae +2"}
	sets.precast["Ukko's Fury"] = {neck="Light gorget",waist="Light belt"}
	sets.precast["King's Justice"] = {neck="Breeze gorget",ear1="Moonshade earring",waist="Caudata belt"}
	sets.precast["Fell Cleave"] = sets.precast["King's Justice"]
	sets.precast["Metatron Torment"] = {neck="Light Gorget"}
	sets.precast["Upheaval"] = {ammo="Oneiros Pebble",neck="Light Gorget",ear1="Moonshade Earring",
		body="Pummeler's Lorica +1",hands="Pumm. Mufflers +1",ring1="Terrasoul Ring",waist="Windbuffet Belt",legs="Cizin breeches"}
	sets.precast["Herculean Slash"] = sets.precast["Upheaval"]
	sets.precast["Sanguine Blade"] = {head="Twilight Helm",body="Twilight Mail",neck="Ravager's Gorget",waist="Wanion belt"}
	sets.precast["Resolution"] = {neck="Breeze Gorget",ear1="Moonshade earring",hands="Rvg. Mufflers +2",waist="Breeze Belt"}

-- TP Sets
	sets.TP = {}
	sets.TP.Bravura = {}
	sets.TP.Bravura.Normal = {ammo="White Tathlum",head="Felistris Mask",neck="Asperity Necklace",ear1="Steelflash Earring",ear2="Bladeborn Earring",
		body="Armada Hauberk",hands="Cizin Mufflers",ring1="K'ayres ring",ring2="Rajas Ring",
		back="Mauler's mantle",waist="Cetl Belt",legs="Pumm. Cuisses +1",feet="Mikinaak Greaves"}
	sets.TP.Bravura.High = {ammo="White Tathlum",head="Otomi Helm",neck="Portus Collar",ear1="Steelflash Earring",ear2="Bladeborn Earring",
		body="Armada Hauberk",hands="Pumm. Mufflers +1",ring1="Ambuscade Ring",ring2="Rajas Ring",
		back="Mauler's mantle",waist="Cetl Belt",legs="Pumm. Cuisses +1",feet="Mikinaak Greaves"}
	sets.TP.Razorfury = {}
	sets.TP.Razorfury.Normal = {ammo="Ravager's orb",head="Felistris Mask",neck="Asperity Necklace",ear1="Steelflash Earring",ear2="Bladeborn Earring",
                body="Armada Hauberk",hands="Pumm. Mufflers +1",ring1="K'ayres ring",ring2="Rajas Ring",
                back="Mauler's mantle",waist="Cetl Belt",legs="Pumm. Cuisses +1",feet="Pumm. Calligae +1"}
	sets.TP.Razorfury.High = {ammo="White Tathlum",head="Otomi Helm",neck="Portus Collar",ear1="Steelflash Earring",ear2="Bladeborn Earring",
		body="Armada Hauberk",hands="Pumm. Mufflers +1",ring1="Ambuscade Ring",ring2="Rajas Ring",
		back="Mauler's mantle",waist="Cetl Belt",legs="Pumm. Cuisses +1",feet="Pumm. Calligae +1"}
	sets.TP.DD = {}
	sets.TP.Hybrid = {}
	sets.TP.Ranged = {neck="Qiqirn collar",ring1="Behemoth ring +1"}
	sets.TP.Engaged = {}
-- Special Sets
	sets.DT = {neck="Twilight Torque",hands="Cizin mufflers",ring1="Dark Ring",ring2="Dark Ring",waist="Flume Belt",
		 back="Shadow Mantle",legs="Cizin breeches"}
	sets.Twilight = {head="Twilight helm",body="Twilight mail"}
-- Aftercast/Idle Sets
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.Engaged
	sets.aftercast.Idle = {ammo="Ravager's orb",
		head="Twilight helm",neck="Twilight Torque", ear1="Ethereal earring",ear2="Brutal earring",
		body="Twilight mail",hands="Cizin mufflers",ring1="Dark Ring",ring2="Dark Ring",
		back="Shadow Mantle",waist="Flume Belt",legs="Cizin breeches",feet="Hermes' Sandals"}
end

-- Precast/Midcast/Aftercast Functions
function precast(spell,action)
	if spell.english == 'Spectral Jig' then
		send_command('cancel 71;')
	end
	if spell.type=="WeaponSkill" then
		if sets.precast[spell.english] then
			if strength_ws:contains(spell.name) then
				if buffactive['Mighty Strikes'] or buffactive['Sneak Attack'] then
					equip(set_combine(sets.precast.Str_Ws,sets.precast[spell.english],sets.precast.SACrit))
				else
					equip(set_combine(sets.precast.Str_Ws,sets.precast[spell.english]))
				end
			elseif crithit_ws:contains(spell.name) then
				if abyssea_zones:contains(zone) and buffactive['Blood Rage'] then
					equip(set_combine(sets.precast.Crit_Ws,sets.precast[spell.english],sets.precast['Blood Rage']))
				elseif buffactive['Mighty Strikes'] or buffactive['Sneak Attack'] then
					equip(set_combine(sets.precast.Crit_Ws,sets.precast[spell.english],sets.precast.SACrit))
				else 
					equip(set_combine(sets.precast.Crit_Ws,sets.precast[spell.english]))
				end
			else
				equip(sets.precast[spell.english])
			end
			equip(sets.precast[spell.english])
		end
	elseif string.find(spell.english,'Waltz') then
		equip(sets.precast.Waltz)
	elseif spell.type == "Ninjutsu" then
		equip(sets.precast.FastCast)
	elseif sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	end
end

function midcast(spell,action)
	if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)']) then
		send_command('@wait 3.3; cancel 66; cancel 444; cancel 445')
	elseif spell.english == 'Monomi: Ichi' and buffactive['Sneak'] then
		send_command('@wait 1.0; cancel 71')
	end

end

function aftercast(spell,action)
	if player.status =='Engaged' then
		equip(sets.aftercast.TP)
	else
		equip(sets.aftercast.Idle)
	end
	if spell.english == 'Tomahawk' then
		send_command('@wait 30; input /echo ------- Tomahawk wore off -------')
	elseif spell.english == 'Mighty Strikes' then
		send_command('@wait 50; input /echo ------- Mighty Strikes Wearing in 10 seconds!! -------')
	end
end

-- Status change (spells, songs, etc.)
function status_change(new,old)
	if T{'Idle','Resting'}:contains(new) then
		equip(sets.aftercast.Idle)
	elseif new == 'Engaged' then
		if player.equipment.main == 'Bravura' then
			if (buffactive['march'] == 2 and buffactive['haste']) or (buffactive['march'] and buffactive['embrava'] and buffactive['haste']) then
				sets.TP.Bravura = sets.TP.Bravura.High
			else
				sets.TP.Bravura = sets.TP.Bravura.Normal
			end
			sets.TP.DD = sets.TP.Bravura
		else
			if (buffactive['march'] == 2 and buffactive['haste']) or (buffactive['march'] and buffactive['embrava'] and buffactive['haste']) then
				sets.TP.Razorfury = sets.TP.Razorfury.High
			else
				sets.TP.Razorfury = sets.TP.Razorfury.Normal
			end	
			sets.TP.DD = sets.TP.Razorfury
		end

		sets.TP.Engaged = sets.TP.DD
		
		if buffactive['Weakness'] or buffactive['Doom'] then
			sets.aftercast.TP = set_combine(sets.TP.Engaged,sets.Twilight)
		else
			sets.aftercast.TP = sets.TP.Engaged
		end
 		equip(sets.aftercast.TP)
	end
end

function buff_change(status,gain_or_loss)
end

-- Self commands 
function self_command(command)
	if command == 'DT' and (buffactive['Weakness'] or buffactive['Doom']) then
		equip(sets.DT,sets.Twilight)
	elseif command == 'DT' then
		equip(sets.DT)
	end
	if command == 'Twilight' then
		equp(sets.Twilight)
	end
	if command == 'TP' and sets.TP.Engaged == sets.TP.DD then
		sets.TP.Engaged = sets.TP.Hybrid
		send_command('input /echo ------- Hybrid TP Set Activated -------')
	elseif command == 'TP' and sets.TP.Engaged == sets.TP.Hybrid then
		sets.TP.Engaged = sets.TP.DD
		send_command('input /echo ------- Normal TP Set Activated -------')
	end
end
