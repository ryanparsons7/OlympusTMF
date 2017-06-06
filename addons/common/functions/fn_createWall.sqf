#include "\x\tmf\addons\common\script_component.hpp"
params ["_object","_toPos"];
private _pos = _object get3DENAttribute "position" select 0; 
private _rot = _object get3DENAttribute "rotation" select 0; 
private _type = _object get3DENAttribute "itemClass" select 0; 
private _relRot = _pos getDir _toPos; 
_rot set [2,_relRot-90]; 
_object set3DENAttribute ["rotation",_rot]; 
private _pos = _object get3DENAttribute "position" select 0; 
private _dist = _pos distance2d _toPos; 
(boundingBoxReal _object) params ["_p1","_p2"];
private _maxWidth = abs ((_p2 select 0) - (_p1 select 0)); 
private _num = _dist /_maxWidth; 
 
for "_i" from 1 to _num do { 
   _newPos = _pos getPos [_maxWidth*_i,_relRot]; 
   _obj = create3DENEntity ["Object",_type,_newPos]; 
   _obj set3DENAttribute ["rotation",_rot];
};
