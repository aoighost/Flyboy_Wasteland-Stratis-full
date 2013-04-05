//	@file Version: 1.1
//	@file Name: mainMissionController.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy,[GoT] JoSchaap
//	@file Created: 08/12/2012 15:19
#include "setup.sqf"
#include "mainMissions\mainMissionDefines.sqf";

if(!isServer) exitWith {};

private ["_MMarray","_lastMission","_randomIndex","_mission","_missionType","_newMissionArray","_lastMission"];

diag_log format["WASTELAND SERVER - Started Main Mission State"];

//Main Mission Array

_MMarray = [[mission_ArmedHeli,"mission_ArmedHeli"],
			[mission_LightArmVeh,"mission_LightArmVeh"],
			[mission_CivHeli,"mission_CivHeli"],
			[mission_Convoy,"mission_Convoy"]];
            
_lastMission = "nomission";
while {true} do
{
    _missionCount = count _MMarray - 1;
    //Select Mission
    _randomIndex = (random _missionCount);
	_mission = _MMarray select _randomIndex select 0;
    _missionType = _MMarray select _randomIndex select 1;

	//Select new mission if the same
	//makes the missions more random as it was always possible to get the same random number twice
	_count = 0;
    while(str(_missionType) == _lastMission || _count != _missionCount) do
    {
        _newMissionArray = _MMarray;
        _newMissionArray set [_randomIndex, "REMOVETHISCRAP"];
        _newMissionArray = _newMissionArray - ["REMOVETHISCRAP"];
        _randomIndex = (random (count _newMissionArray - 1));
        _missionType = _newMissionArray select _randomIndex select 1;
        _mission = _newMissionArray select _randomIndex select 0;
		_count = _count + 1;
    };
    
	_missionRunning = [] spawn _mission;
    diag_log format["WASTELAND SERVER - Execute New Main Mission: %1",_missionType];
    _hint = parseText format ["<t align='center' color='%2' shadow='2' size='1.75'>Main Objective</t><br/><t align='center' color='%2'>------------------------------</t><br/><t color='%3' size='1.0'>Starting in %1 Minutes</t>", mainMissionDelayTime / 60, mainMissionColor, subTextColor];
	messageSystem = _hint;
	publicVariable "messageSystem";
    _lastMission = _missionType;
	waitUntil{sleep 0.1; scriptDone _missionRunning};
    sleep 5; 
};
