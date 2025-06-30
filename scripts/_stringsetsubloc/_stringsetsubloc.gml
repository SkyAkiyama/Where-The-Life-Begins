function stringsetsubloc()
{
    var len = argument_count;
    var args;
    for (var i = 0; i < len; i++)
        args[i] = argument[i];
    var format_string = argument[0];
    var localized_format_string_id = argument[len - 1];
    var str = substringargs(format_string, 1, args);
    return stringset(str);
}