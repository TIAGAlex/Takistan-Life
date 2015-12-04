// description created by Gman
// updates the clothings for custom textures and adds it in to shops as well

private["_uniform","_backpack"];

///Uniform
////////////////

_uniform = uniform player;

switch(true) do
   {
        case (playerSide == West && _uniform == "U_Rangemaster"):
        {
        player setObjectTextureGlobal  [0, "textures\police_uniforms\police_uniform.paa"];
        };


		case (playerSide ==  Resistance && _uniform == "U_Rangemaster");
		{
		player setObjectTextureGlobal [0, "textures\Medic_uniforms\Medic_NotHighVisability.paa"];
		};


    };





