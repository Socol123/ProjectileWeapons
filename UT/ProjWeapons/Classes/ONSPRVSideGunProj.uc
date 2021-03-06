class ONSPRVSideGunProj extends ONSWeapon;

simulated function FlashMuzzleFlash()
{
	Super.FlashMuzzleFlash();

	if (Role < ROLE_Authority)
		DualFireOffset *= -1;

}

defaultproperties
{

     FireInterval=0.010000
	ProjectileClass=Class'ProjectileWeapons.ONSLightBullet'
     Spread=0.0030000
     YawBone="SIDEgunBASE"
     PitchBone="SIDEgunBARREL"
     PitchUpLimit=12500
     PitchDownLimit=59500
     WeaponFireAttachmentBone="Firepoint"
	GunnerAttachmentBone="SideGunnerLocation"
//     WeaponFireOffset=85.000000
     DualFireOffset=5.000000
     RotationsPerSecond=2.000000
     bInstantRotation=True
     bInstantFire=False
     bDoOffsetTrace=True
     bAmbientFireSound=True
     bIsRepeatingFF=True
     RedSkin=Shader'VMVehicles-TX.NEWprvGroup.newPRVredSHAD'
     BlueSkin=Shader'VMVehicles-TX.NEWprvGroup.newPRVshad'
	FlashEmitterClass=Class'Onslaught.ONSRVChainGunFireEffect'	
     AmbientEffectEmitterClass=Class'Onslaught.ONSRVChainGunFireEffect'
     FireSoundClass=Sound'ONSVehicleSounds-S.Tank.TankMachineGun01'
     AmbientSoundScaling=1.300000
     FireForce="minifireb"
     DamageType=Class'Onslaught.DamTypeONSChainGun'
     ShakeRotMag=(X=50.000000,Y=50.000000,Z=50.000000)
     ShakeRotRate=(X=10000.000000,Y=10000.000000,Z=10000.000000)
     ShakeRotTime=2.000000
     ShakeOffsetMag=(X=1.000000,Y=1.000000,Z=1.000000)
     ShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     ShakeOffsetTime=2.000000
     AIInfo(0)=(bInstantHit=False,aimerror=750.000000)
     CullDistance=8000.000000
     Mesh=SkeletalMesh'ONSWeapons-A.PRVsideGun'

}
