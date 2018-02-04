private _curator = (getAssignedCuratorLogic player);
private _tfarspec = !(_curator getVariable ["TFAR_forceSpectator",false]);

[player, _tfarspec] call TFAR_fnc_forceSpectator;