#This is an expansion of the empty groups script by Ashley McGlone where I put into a module

function show-groups {

$GroupList = Get-ADGroup -Filter * -Properties Name, DistinguishedName, GroupCategory, GroupScope, whenCreated, whenChanged, member, memberOf, SamAccountName, Description |            
    Select-Object Name, DistinguishedName, GroupCategory, GroupScope, whenCreated, whenChanged, member, memberOf, SamAccountName, Description, 
        @{name='MemberCount';expression={$_.member.count}}, `
        @{name='MemberOfCount';expression={$_.memberOf.count}}, `
        @{name='DaysSinceChange';expression=`
            {[math]::Round((New-TimeSpan $_.whenChanged).TotalDays,0)}} | Sort-Object Name            
            
$GroupList | Select Name, SamAccountName, Description, DistinguishedName, GroupCategory, GroupScope, whenCreated, whenChanged, DaysSinceChange, membercount, memberofcount | Export-CSV c:\temp\AllGroups.csv -NoTypeInformation

}


function user-groups {

Get-ADUser -Filter {enabled -eq $true} -Properties memberof |select name, @{L='Groups'; E={$_.memberof}} | Export-Csv -Path c:\temp\usersgroups.csv -NoTypeInformation

}
