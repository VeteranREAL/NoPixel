//["Task",TIME,fnc_to_run,Object Distance Check,animation,[Array of actions],soundtoplay] spawn client_fnc_dotask;

player say "slideout";
disableSerialization;
_task = _this select 0;
_timeLeft = _this select 1;
_process = _this select 2;
_distanceCheck = _this select 3;
_animation = _this select 4;
_actions = _this select 5;
_sound = _this select 6;
_success = true;
_error = "Sukces!";

_factor = 1;
if(karma_level != 0) then { _factor = karma_level / 4; };

_timeLeft = _timeLeft - _factor;

if(_timeLeft < 1) then { _timeLeft = 3; };
_timeLeft = round ( _timeLeft );

21 cutRsc ["RSC_dotask","PLAIN"];
_POPTASK = uiNameSpace getVariable ["RSC_dotask",displayNull];
_POPUP = _POPTASK displayCtrl 9119;
_POPUP ctrlSetStructuredText parseText format["<img size='1' image='cg_mission_files\icons\info.paa'/> <t color='#FFCC00'><t size='0.9'>%1</t> <br/> <t size='2'>%2</t>",_task,_timeLeft];

if !(_sound isEqualTo 0) then { 
	playSound3D [_sound, player, false, getPosASL player, 8, 1, 45];
};

if (_distanceCheck isEqualTo 0) then { 
	_distanceCheck = player;
};

while{true} do {

	uisleep 1;
	_timeLeft = _timeLeft - 1;
	_POPUP ctrlSetStructuredText parseText format["<img size='1' image='cg_mission_files\icons\info.paa'/> <t color='#FFCC00'><t size='0.9'>%1</t> <br/> <t size='2'>%2</t>",_task,_timeLeft];
	if(_timeLeft == 0) exitwith {};

	if( !(_animation isEqualTo 0) && (animationstate player) != _animation) then { player playmove _animation; };
	if((getposATL player) distance (getposATL _distanceCheck) > 6) exitwith { _success = false; _error = "Movement Error"; };
	if(!_success) exitwith {};		
	if(ClientInterrupted) exitwith { _success = false; _error = "Client Interrupted"; player switchmove ""; };
	if(DeadPlayer) exitwith { _success = false; _error = "Dead Player"; };	

};

if !(_animation isEqualTo 0) then { 
	player switchMove "";
};
	
_POPUP ctrlSetStructuredText parseText format["<img size='1' image='cg_mission_files\icons\info.paa'/> <t color='#FFCC00'><t size='0.9'>%1</t> <br/> <t size='1'>%2</t>",_task,_error];
sleep 1;
player say "slideout";
_POPUP ctrlSetStructuredText parseText format["",_task,_timeLeft];
if(!_success) exitwith {}; // we errored, lets not do the task!
if !(_process isEqualTo 0) then { if(_actions isEqualTo 0) then { [] spawn _process; } else { [_actions] spawn _process; }; };