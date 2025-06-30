function create_dialog(_messages)
{
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialog);
    _inst.messages = _messages;
    _inst.current_message = 0;
}

char_color = {
    "Alice": c_purple
}

test_dialog = [
{
    name: "test",
    msg: "Test dialog."
},

{
    name: "Alice",
    msg: "Test dialog."
}
]

flag_test = [
{
    name: "test",
    msg: "Flag set correctly.\nDialog changed."
},

{
    name: "Alice",
    msg: "We love global flags."
}
]