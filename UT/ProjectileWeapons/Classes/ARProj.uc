//=============================================================================
// Assault Rifle
//=============================================================================
class ARProj extends AssaultRifle
    config(user);

simulated event ClientStartFire(int Mode)
{
	Super.ClientStartFire(Mode);
	
}

defaultproperties
{

    ItemName="Assault Rifle Proj"


    FireModeClass(0)=ARProjFire

}
