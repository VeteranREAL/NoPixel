disableSerialization;
_shopname = ctrlText 9339;

_cash = player getVariable "wallet";
if(_cash < 250) exitwith { ["Za mało pieniędzy. ($250)", true] spawn domsg; };
[getpos currentcursortarget,player,_shopname] remoteexec ["server_fnc_rentoffice",2];
