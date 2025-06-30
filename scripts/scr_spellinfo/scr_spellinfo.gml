function scr_spellinfo(arg0)
{
    cost = -1;
    element = " ";
    spelltarget = 1;
    spellname = stringsetloc();
    spellnameb = " ";
    spelldescb = stringsetloc( );
    spelldesc = stringsetloc( );
    spellanim = 0;
    spellusable = 0;
    spelltext = " ";
    switch (arg0)
    {
        case 0:
            spellname = stringsetloc();
            spellnameb = " ";
            spelltarget = 0;
            cost = -1;
            element = "None"
            spelldescb = stringsetloc("None");
            break;
        case 1:
           break; 
    }
}