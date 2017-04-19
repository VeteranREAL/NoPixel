/*
		Author: Kajetan "Kruk" Mruk
		Date: 19.04.2017
		Params: 
			0 - Array, case data
		Description: Reads data from avialable company garage
		Return: none
*/
disableSerialization;
_data = _this;
if(isNil "_data") then { _data = []; };
if(count _data == 0) exitWith {};
//id, plate, class, color, finish
_display = findDisplay 666010;
_edit_plate = _display displayCtrl 1001;
_list_vehicles = _display displayCtrl 1101;
_text_title = _display displayCtrl 1301;
{
	_id = _x select 0;
	_plate = _x select 1;
	_class = _x select 2;
	_list_vehicles lbAdd format["ID: %1 | PLATE: %2 | CLASS: %3", _id, _plate, _class];
	_list_vehicles lbSetData [(lbSize _list_vehicles) - 1, str(_x)];
} forEach _data;