
private _lP = (profileNamespace getVariable ["nln_cas_checkin_currentPage", -1]);
private _nP = (["cas_checkin", _lP] call nln_main_fnc_getNextPage);

if (_nP <= -1) then
{
    private _pP = (["cas_checkin", _lP] call nln_main_fnc_getPagePosition);

    if ((count _pP) > 0) then
    {
        hint (format[("STR_nln_main_interactions_pageCountHint" call BIS_fnc_localize), (_pP select 0) + 1, (_pP select 1)]);
    };
}
else
{
    call nln_cas_checkin_fnc_savePage;
    private _pP = (["cas_checkin", _nP] call nln_main_fnc_getPagePosition);
    hint (format[("STR_nln_main_interactions_pageCountHint" call BIS_fnc_localize), (_pP select 0), (_pP select 1)]);
};

[_nP] call nln_cas_checkin_fnc_updateMenu;
profileNamespace setVariable ["nln_cas_checkin_currentPage", _nP];
