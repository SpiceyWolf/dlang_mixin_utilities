module mixin_utilities;

/***********************************
* Borrowed from BindBC.SFML - Created by mdparker
*
* Original source: 
*     https://github.com/BindBC/bindbc-sfml/blob/40b08ffa045a139585720a113b619d4357cd89c2/source/bindbc/sfml/config.d#L46
*/
enum expandEnum(EnumType, string fqnEnumType = EnumType.stringof) = (){
    string expandEnum = "enum {";
    foreach(m;__traits(allMembers, EnumType)) {
        expandEnum ~= m ~ " = " ~ fqnEnumType ~ "." ~ m ~ ",";
    }
    expandEnum  ~= "}";
    return expandEnum;
}();