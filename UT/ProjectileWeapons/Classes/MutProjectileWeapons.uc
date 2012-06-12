class MutProjectileWeapons extends Mutator
    config(user);
 
//=============================================================================
//function string GetInventoryClassOverride(string InventoryClassName)
//{
//	if (InventoryClassName == "XWeapons.AssaultRifle")
//		InventoryClassName = "ProjectileWeapons.AssaultRifleProj";
//	if (InventoryClassName == "UTClassic.ClassicSniperRifle")
//		InventoryClassName = "ProjectileWeapons.SniperRifleProj";
//	return Super.GetInventoryClassOverride(InventoryClassName);
//}

function Weapon GiveWeapon(Pawn PlayerPawn, string aClassName, optional bool bBringUp)
{
    local class<Weapon> WeaponClass;
    local Weapon NewWeapon;
 
    WeaponClass = class<Weapon>(DynamicLoadObject(aClassName, class'Class'));
 
    if ( PlayerPawn.FindInventoryType(WeaponClass) != None )
        return None;
    newWeapon = Spawn(WeaponClass);
    if ( newWeapon != None ) {
        newWeapon.GiveTo(PlayerPawn);
        newWeapon.AmbientGlow = 0;
        if ( PlayerPawn.IsA('PlayerPawn') )
            newWeapon.GotoState('Idle');
        if ( bBringUp ) {
            PlayerPawn.Weapon.GotoState('DownWeapon');
            PlayerPawn.PendingWeapon = None;
            PlayerPawn.Weapon = newWeapon;
            PlayerPawn.Weapon.BringUp();
        }
    }
    return newWeapon;
}

function ModifyPlayer (Pawn Other)
{
	GiveWeapon(Other, "ProjectileWeapons.AssaultRifleProj", true);
	GiveWeapon(Other, "ProjectileWeapons.SniperRifleProj", true);
//	GiveWeapon(Other, "ProjectileWeapons.LMGProj", true);
}

//=============================================================================
defaultproperties
{
     GroupName="Projectile based rifles"
     FriendlyName="Projectile based rifles"
     Description="Projectile based rifles"
}
