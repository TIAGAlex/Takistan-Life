life_fadeSound = !life_fadeSound;

if (life_fadeSound) then 
{
	1 fadeSound 0.1; // Faded to 10%
	titleText ["Earplugs Inserted", "PLAIN"];
}
else
{
	1 fadeSound 1; // Returned to 100%
	titleText ["Earplugs Removed.", "PLAIN"];
};