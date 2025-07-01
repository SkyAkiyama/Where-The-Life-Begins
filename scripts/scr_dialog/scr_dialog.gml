/// @param {string} text_id
function game_text(text_id)
{
    switch(text_id)
    {
        #region Testing Dynamic Dialog
        case "Test Block":
            scr_text("NPC 1 Test Dialog.");
            scr_text("This is dialog exclusive to my object. No one else has it!");
            scr_text("I even have options. How about we try one now? Do you wish to partake in this game?");
                scr_option("Yes", "Test Block - Yes");
                scr_option("No", "Test Block - No");
        break;
        case "Test Block - Yes":
            scr_text("How wonderful.");
            scr_text("Me too, once there is actually game to be partake in.");
        break;
        case "Test Block - No":
            scr_text("Well, lucky for you.");
            scr_text("There is no game to partake in yet.");
        break;
        
        case "Test Block 2":
            scr_text("This is MY dialog. The vastly superior NPC 2.");
            scr_text("Suck my ding NPC 1.");
        #endregion
    }
}