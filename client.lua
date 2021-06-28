AddEventHandler("DamageEvents:EntityDamaged", function(victim, attacker, pWeapon, isMelee)
	local playerPed = PlayerPedId()
  
	if victim ~= playerPed then
	  return
	end
  
	if pWeapon == GrenadeHash then
	  DoFlashBang()
	  return
	end
  end)

local GrenadeHash = -1813897027
function DoFlashBang()
    StartScreenEffect("Dont_tazeme_bro", 0, true)
    TriggerEvent('InteractSound_CL:PlayOnOne','flashbang', 0.05)
    ShakeGameplayCam("HAND_SHAKE",2.0)
    SetRunSprintMultiplierForPlayer(PlayerId(), 0.5)
    Wait(12500)
    ShakeGameplayCam("HAND_SHAKE",0.0)    
    StopScreenEffect("Dont_tazeme_bro")
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.00)
    StopGameplayCamShaking() 
end