
call nln_marking_mission_fnc_savePage;

if (nln_dialogToDisplay_enable) then
{
    call nln_marking_mission_fnc_openBackground;
};

nln_ui_fonts_currentFont = nil;
