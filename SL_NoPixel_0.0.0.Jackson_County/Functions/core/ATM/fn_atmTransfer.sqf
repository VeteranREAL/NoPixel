params["_bankType"];
                                                                                        //hint "Nie masz do tego dostępu!";
if(_bankType == 1) exitwith { ["Błąd","Nie masz do tego dostępu!",[255,0,0,1],""] call Client_fnc_showNotification; };

_amount = parseNumber (ctrlText 1400);
_player = call compile format["%1",(lbData[1111,(lbCurSel 1111)])];
if(isnull _player) exitwith {};
                                                                                   //hint "Nie wybrano gracza!";
if(isnil "_player") exitwith { ["Błąd","Nie wybrano gracza!",[255,0,0,1],""] call Client_fnc_showNotification;};
closeDialog 0;
if (_amount > 999999) exitWith {hint "Kwota nie może być większa niż 999 999$!";};
_check = [2, _amount] call client_fnc_checkMoney;
if (_check) then {

_tax = round (_amount / 20);
_amount = _amount + _tax;
[_amount] call Client_fnc_removeBank;
[_amount] remoteExec ["Client_fnc_addBank",_player];

["Sukces","Pieniądze wysłane pomyślnie",[0,255,0,1],""] call Client_fnc_showNotification;
[player,_player,6,format ["%1 przelał %2 dla %3", name player, _amount, name _player],_amount] remoteExec ["server_fnc_moneyLog", 2];
} else {
                                                            //hint "Masz za mało pieniędzy!"; 
     ["Błąd","Masz za mało pieniędzy!",[255,0,0,1],""] call Client_fnc_showNotification;  
};
