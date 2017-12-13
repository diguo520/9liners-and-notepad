nln_nineliner_cas_fnc_open =
{
	if !(isNil {nln_nineliners_and_notepad_currentResource} OR nln_nineliners_and_notepad_currentResource == "") exitWith {hint "You have to close the current sheet first!";};
	closeDialog 0;
	createDialog "nln_nineliner_cas";
	_lastpage = call nln_nineliner_cas_fnc_GetLastPage;
	_pagetext = [_lastpage] call nln_nineliner_cas_fnc_GetPageText;
	nln_nineliner_cas_currentPage = _lastpage;
	[_pagetext] call nln_nineliner_cas_fnc_fill;
	profileNamespace setVariable ["nln_nineliner_cas_lastPage", nln_nineliner_cas_currentPage];
	hint format ["PAGE %1/20", nln_nineliner_cas_currentPage];
};
