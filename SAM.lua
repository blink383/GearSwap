-- Tables of Data
toau_zones = S{"Leujaoam Sanctum","Mamool Ja Training Grounds","Lebros Cavern","Periqia","Ilrusi Atoll",
        "Nyzul Isle","Bhaflau Remnants","Arrapago Remnants","Silver Sea Remnants","Zhayolm Remnants"}

abyssea_zones = S{"Abyssea - Konschtat","Abyssea - La Theine","Abyssea - Tahrongi","Abyssea - Attohwa",
		"Abyssea - Misareaux","Abyssea - Vunkerl","Abyssea - Altepa","Abyssea - Grauberg",
		"Abyssea - Uleguerand","Abyssea - Empyreal Paradox"}

strength_ws = S{}

-- Functions
-- Gear Sets go here
function get_sets()				
	sets.precast = {}
-- JA Sets
	sets.precast['Seigan'] = {head="Unkai Kabuto +2"}
	sets.precast['Meditate'] = {head="Wakido Kabuto +1",hands="Sao. Kote +2"}
	sets.precast['Hasso'] = {}
	sets.precast['Sekkanoki'] = {hands="Unkai Kote+2"}
	sets.precast['Shikikoyo'] = {}
	sets.precast['Third eye'] = {legs="Sao. Haidate +2"}
	sets.precast['Sengikori'] = {feet="Unkai Sune-Ate +2"}
	sets.precast['Hamanoha'] = {}
	sets.precast['Hagakure'] = {}
	sets.precast['Konzen-ittai'] = {}

-- Subjob JA Sets
	sets.precast.FastCast = {ear1="Loquac. earring"}
	sets.precast.Waltz = {head="Yaoyotl helm",neck="Apathy gorget",body="Cizin mail",hands="Cizin mufflers",
                ring2="Dark Ring",back="Shadow Mantle",legs="Cizin Breeches"}
-- WS Sets
	sets.WS = {}
	sets.precast.Amano = {}
	sets.precast.Tsurumaru = {}
	sets.precast.Str_Ws = {head="Otomi helm",body="Phorcys Korazin",hands="Cizin mufflers",back="Buquwik Cape",
		legs="Wakido Haidate+1",feet="Mikinaak Greaves"}
	sets.precast.Amano['Tachi: Shoha'] = {ammo="Cheruski Needle",head="Otomi Helm",neck="Asperity Necklace",ear1="Steelflash Earring",ear2="Bladeborn Earring",
		body="Phorcys Korazin",hands="Cizin mufflers",ring1="Pyrosoul Ring",ring2="Rajas Ring",
		back="Buquwik Cape",waist="Windbuffet Belt",legs="Wakido Haidate",feet="Mikinaak Greaves"}
	sets.precast.Amano['Tachi: Kaiten'] = {ammo="Cheruski Needle",head="Otomi Helm",neck="Light Gorget",ear1="Steelflash Earring",ear2="Bladeborn Earring",
		body="Phorcys Korazin",hands="Cizin mufflers",ring1="Pyrosoul Ring",ring2="Rajas Ring",
		back="Buquwik Cape",waist="Light Belt",legs="Wakido Haidate",feet="Mikinaak Greaves"}
	sets.precast.Amano['Tachi: Fudo'] = {ammo="Potestas Bomblet",head="Otomi Helm",neck="Justiciar's Torque",ear1="Steelflash Earring",ear2="Bladeborn Earring",
		body="Phorcys Korazin",hands="Miki. Gauntlets",ring1="Pyrosoul Ring",ring2="Rajas Ring",
		back="Buquwik Cape",waist="Light Belt",legs="Wakido Haidate",feet="Mikinaak Greaves"}
	sets.precast.Tsurumaru['Tachi: Shoha'] = {ammo="Cheruski Needle",head="Otomi Helm",neck="Asperity Necklace",ear1="Steelflash Earring",ear2="Bladeborn Earring",
		body="Phorcys Korazin",hands="Cizin mufflers",ring1="Pyrosoul Ring",ring2="Rajas Ring",
		back="Buquwik Cape",waist="Windbuffet Belt",legs="Wakido Haidate",feet="Mikinaak Greaves"}
	sets.precast.Tsurumaru['Tachi: Fudo'] = {ammo="Potestas Bomblet",head="Otomi Helm",neck="Justiciar's Torque",ear1="Steelflash Earring",ear2="Bladeborn Earring",
		body="Phorcys Korazin",hands="Miki. Gauntlets",ring1="Pyrosoul Ring",ring2="Rajas Ring",
		back="Buquwik Cape",waist="Light Belt",legs="Wakido Haidate",feet="Mikinaak Greaves"}
	

-- TP Sets
	sets.TP = {}
	sets.TP.Amano = {}
	sets.TP.Amano.Normal = {ammo="Hagneia Stone",head="Otomi Helm",neck="Asperity Necklace",ear1="Steelflash Earring",ear2="Bladeborn Earring",
		body="Wakido Domaru +1",hands="Wakido Kote +1",ring1="K'ayres ring",ring2="Rajas Ring",
		back="Takaha Mantle",waist="Windbuffet Belt",legs="Otronif Brais",feet="Otronif Boots"}
	sets.TP.Amano.High = {ammo="Hagneia Stone",head="Otomi Helm",neck="Portus Collar",ear1="Steelflash Earring",ear2="Bladeborn Earring",
		body="Wakido Domaru +1",hands="Wakido Kote +1",ring1="K'ayres ring",ring2="Rajas Ring",
		back="Atheling Mantle",waist="Windbuffet Belt",legs="Otronif Brais",feet="Otronif Boots"}
	sets.TP.Tsurumaru = {}
	sets.TP.Tsurumaru.Normal = {ammo="Hagneia Stone",head="Otomi Helm",neck="Asperity Necklace",ear1="Steelflash Earring",ear2="Bladeborn Earring",
                body="Wakido Domaru +1",hands="Wakido Kote +1",ring1="K'ayres ring",ring2="Rajas Ring",
                back="Atheling Mantle",waist="Windbuffet Belt",legs="Wakido Haidate",feet="Otronif Boots"}
	sets.TP.Tsurumaru.High = {ammo="Potestas Bomblet",head="Otomi Helm",neck="Portus Collar",ear1="Steelflash Earring",ear2="Bladeborn Earring",
		body="Wakido Domaru +1",hands="Wakido Kote +1",ring1="Ambuscade Ring",ring2="Rajas Ring",
		back="Atheling mantle",waist="Cetl Belt",legs="Wakido Haidate",feet="Otronif Boots"}
	sets.TP.DD = {}
	sets.TP.Hybrid = {}
	sets.TP.Ranged = {}
	sets.TP.Engaged = {}
-- Special Sets
	sets.DT = {neck="Twilight Torque",hands="",ring1="Dark Ring",ring2="Dark Ring",waist="Flume Belt",
		 back="Shadow Mantle",legs=""}
	sets.Twilight = {head="Twilight helm",body="Twilight mail"}
-- Aftercast/Idle Sets
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.Engaged
	sets.aftercast.Idle = {ammo="Hagneia Stone",
		head="Twilight helm",neck="Twilight Torque", ear1="Steelflash Earring",ear2="Bladeborn Earring",
		body="Twilight mail",hands="Wakido Kote +1",ring1="Dark Ring",ring2="Dark Ring",
		back="Shadow Mantle",waist="Flume Belt",legs="Wakido Haidate",feet="Danzo Sune-Ate"}
end

-- Precast/Midcast/Aftercast Functions
function precast(spell,action)
	if spell.english == 'Spectral Jig' then
		send_command('cancel 71;')
	end
	if spell.type=="WeaponSkill" then
		if player.equipment.main == 'Amanomurakumo' then
			if sets.precast.Amano[spell.english] then
				equip(sets.precast.Amano[spell.english])
			else
				equip(sets.precast.Amano['Tachi: Kaiten'])
			end
		elseif player.equipment.main == 'Tsurumaru' then
			if sets.precast.Tsurumaru[spell.english] then
				equip(sets.precast.Tsurumaru[spell.english])
			else
				equip(sets.precast.Tsurumaru['Tachi: Fudo'])
			end
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
end

-- Status change (spells, songs, etc.)
function status_change(new,old)
	if T{'Idle','Resting'}:contains(new) then
		equip(sets.aftercast.Idle)
	elseif new == 'Engaged' then
		if player.equipment.main == 'Amanomurakumo' then
			if (buffactive['march'] == 2 and buffactive['haste']) or (buffactive['march'] and buffactive['embrava'] and buffactive['haste']) then
				sets.TP.DD = sets.TP.Amano.High
			else
				if buffactive['Aftermath'] then
					sets.TP.DD = set_combine(sets.TP.Amano.Normal,{back="Atheling Mantle"})
				else
					sets.TP.DD = sets.TP.Amano.Normal
				end
			end
		else
			if (buffactive['march'] == 2 and buffactive['haste']) or (buffactive['march'] and buffactive['embrava'] and buffactive['haste']) then
				sets.TP.DD = sets.TP.Tsurumaru.High
			else
				sets.TP.DD = sets.TP.Tsurumaru.Normal
			end	
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
