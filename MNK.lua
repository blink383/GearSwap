function get_sets()				
	sets.precast = {}
	sets.precast.Chakra = {ammo="Iron Gobbet",body="Anchorite's Cyclas",hands="Melee Gloves +2",ring2="Terrasoul Ring",
		back="Iximulew cape",ring1="Spiral Ring",legs="Quiahuiz Leggings",feet="Thurandaut boots +1",
		waist="Warwolf Belt"}
	sets.precast.Counterstance = {feet="Melee Gaiters +2"}
	sets.precast.PerfectCounter = {head="Tantra Crown +2",feet="Melee Gaiters +2"}
	sets.precast.Dodge = {feet="Anchorite's Gaiters"}
	sets.precast.Boost = {hands="Anchorite's Gloves"}
	sets.precast.Mantra = {feet="Melee Gaiters +2"}
	sets.precast.Ninjutsu = {ear1="Loquac. earring",hands="Thaumas Gloves",neck="Magoraga Beads"}
	sets.precast.Waltz = {head="Anwig Salade",neck="Dualism Collar",ring1="Valseur's Ring",ring2="Veela Ring",
		waist="Aristo Belt",legs="Desultor Tassets",feet="Dance Shoes"}
		
	sets.precast['Victory Smite'] = {ammo="Potestas Bomblet",head="Uk'uxkaj Cap",neck="Light Gorget",
		ear1="Moonshade Earring",ear2="Brutal Earring",body="Manibozho Jerkin",hands="Otronif Gloves",
		ring1="Pyrosoul Ring",ring2="Epona's Ring",back="Rancorous Mantle",waist="Windbuffet Belt",legs="Manibozho Brais",
		feet="Manibozho Boots"}
	sets.precast['Shijin Spiral'] = {ammo="Potestas Bomblet",head="Whirlpool Mask",neck="Justiciar's Torque",
		ear1="Steelflash earring",ear2="Bladeborn earring",body="Manibozho Jerkin",hands="Otronif Gloves",
		ring1="Rajas Ring",ring2="Epona's Ring",back="Atheling Mantle",waist="Windbuffet Belt",legs="Manibozho Leggings",
		feet="Manibozho boots"}
		
	sets.precast.WS = {ammo="Potestas Bomblet",head="Whirlpool Mask",neck="Justiciar's Torque",
		ear1="Steelflash Earring",ear2="Bladeborn Earring",body="Manibozho Jerkin",hands="Mel. Gloves +2",
		ring1="Rajas Ring",ring2="Pyrosoul Ring",back="Atheling Mantle",waist="Black Belt",legs="Manibozho Brais",
		feet="Manibozho Boots"}
	
	sets.TP = {}
	sets.TP.DD = {ammo="Potestas Bomblet",head="Uk'uxkaj Cap",neck="Asperity Necklace",
		ear1="Steelflash Earring",ear2="Bladeborn Earring",body="Thaumas Coat",hands="Otronif Gloves",
		ring1="Rajas Ring",ring2="Epona's Ring",back="Atheling Mantle",waist="Windbuffet Belt",legs="Quiahuiz Leggings",
		feet="Manibozho Boots"}
		
	sets.TP.Solo = {}
	
	sets.DT = {ammo="Iron Gobbet",neck="Twilight Torque",body="Manibozho Jerkin",
		hands="Otronif Gloves",ring1="Dark Ring",ring2="Dark Ring",waist="Black Belt"}
	
	sets.aftercast = {}
	sets.aftercast.TP = sets.TP.DD
	
	sets.aftercast.Idle = {ammo="Potestas Bomblet",head="Otronif Mask",neck="Wiglen Gorget",
		body="Otronif Harness",hands="Otronif Gloves",ring1="Paguroidea Ring",ring2="Sheltered Ring",
		back="Boxer's Mantle",waist="Black Belt",legs="Otronif Brais",feet="Hermes' Sandals"}
	send_command('input /macro book 15;wait .1;input /macro set 1')
end

function precast(spell)
	if spell.english == 'Spectral Jig' then
                send_command('cancel 71;')
	end	
	if sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif spell.type=="WeaponSkill" then
		equip(sets.precast.WS)
	elseif string.find(spell.english,'Waltz') then
		equip(sets.precast.Waltz)
	elseif spell.type:lower() == 'ninjutsu' and spell.casttime > 1 then
		equip(sets.precast.Ninjutsu)
	end
end

function midcast(spell)
        if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)']) then
                send_command('@wait 3.3; cancel 66; cancel 444; cancel 445')
        elseif spell.english == 'Monomi: Ichi' and buffactive['Sneak'] then
                send_command('@wait 1.0; cancel 71')
        end

end

function aftercast(spell)
	if player.status =='Engaged' then
		equip(sets.aftercast.TP)
	else
		equip(sets.aftercast.Idle)
	end
end

function status_change(new,old)
	if T{'Idle','Resting'}:contains(new) then
		equip(sets.aftercast.Idle)
	elseif new == 'Engaged' then
		equip(sets.aftercast.TP)
	end
end

function buff_change(status,gain_or_loss)
end

function self_command(command)
	if command == 'toggle TP set' then
		if sets.aftercast.TP == sets.TP.DD then
			sets.aftercast.TP = sets.TP.Solo
			send_command('@input /echo SOLO SET')
		elseif sets.aftercast.TP == sets.TP.Solo then
			sets.aftercast.TP = sets.TP.DD
			send_command('@input /echo DD SET')
		end
	elseif command == 'DT' then
		equip(sets.DT)
	end
end
