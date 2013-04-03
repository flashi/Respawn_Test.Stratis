if(isNil {vas_onRespawn}) then
{
[] execVM "gear\functions.sqf";
[] execVM "gear\config.sqf";
sleep 0.2;
};
createDialog "VAS_Diag";
GunShopRekrutierenBLUFOR1 disableAI 'MOVE';//aktiv
GunShopRekrutierenBLUFOR2 disableAI 'MOVE';//aktiv
GunShopRekrutierenBLUFOR3 disableAI 'MOVE';//aktiv
GunShopRekrutierenBLUFOR4 disableAI 'MOVE';//aktiv
GunShopRekrutierenBLUFOR5 disableAI 'MOVE';//inaktiv 
GunShopRekrutierenBLUFOR6 disableAI 'MOVE';//inaktiv 
GunShopRekrutierenBLUFOR7 disableAI 'MOVE';//inaktiv 
GunShopRekrutierenBLUFOR8 disableAI 'MOVE';//inaktiv 
GunShopRekrutierenBLUFOR9 disableAI 'MOVE';//inaktiv 
GunShopRekrutierenBLUFOR10 disableAI 'MOVE';//inaktiv 
disableSerialization;

ctrlShow [2503,false];
ctrlShow [2507,false];
ctrlShow [2508,false];
ctrlShow [2509,false];