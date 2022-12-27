convertfrom-csv
# -Delimiter, 
Compare-Object
# -referenceObject, -diferenceObject, 
# -excludeDifference, -IncludeEqual
# -caseSensitive,
Clear-Variable
# -name, -include, -exclude, -Scope, -PassThru
# scope: local, global, script
clear-variable my* -Scope global

Add-Type

$Source = @"
public class BasicTest
{
    public static int Add(int a, int b){
        return (a + b);
    }
    public int Multiply(int a, int b){
        return (a*b);
    }
}
"@

Add-Type -TypeDefinition $Source
# -typedefinition, -language
Add-Member
# adds custom properties and methods to an instance of a object
Add-Member -InputObject -TypeName
# -TypeName, -NotePropertyMembers
# -TypeName, -Note-PropertyValue, -NotePropertyMembers
# -MemberType, -Name, -Value, -SecondValue, -TypeName
$A | Add-Member -NotePropertyName Status -Note-PropertyValue Done
$A | Add-Member -MemberType -Name -Value
$A | Add-Member -NotePropertyMembers @{StringUse="Display"}

$tab = @{
    name="euewrqe";
    email="euewrqe@gmail.com"
}
ConvertTo-Json
ConvertFrom-Json
# -Compress
ConvertFrom-Csv
ConvertTo-Csv
ConvertFrom-String
# -Delimiter, -PropertyNames
# -Templatecontent

% -> ForEach-Object



