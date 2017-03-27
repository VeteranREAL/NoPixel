/*
		Author: Kajetan "Kruk" Mruk
		Date: 16.03.2017
		Params: 
			0 - String, Type of update
			1 - Array, data
		Description: Updates data in the database
		Return: nothing
*/
_type = _this select 0;
_data = _this select 1;
if(_type == "deactive") exitWith {
	_queryString = format["updateSLPDPrison_deactive:%1", _data select 0];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
if(_type == "ended") exitWith {
	_queryString = format["updateSLPDPrison_ended:%1", _data select 0];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
if(_type == "finish") exitWith {
	_queryString = format["updateSLPDPrison_finish:%1", _data select 0];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
