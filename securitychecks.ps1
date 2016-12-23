<#run each line separately not the entire script at once. These commands were run on a DC on Windows 2008 R2 standard
I have been using this site to see what IDs might be useful at my work
https://www.ultimatewindowssecurity.com/securitylog/encyclopedia/Default.aspx
#>

Get-EventLog -logname Security -InstanceId 1102 | export-clixml c:\results.xml #find out who and when the audit log was cleared

Get-EventLog -logname Security -InstanceId 4614 | export-clixml c:\results.xml #notification package to evaluate passwords against own rules for acceptability

Get-EventLog -logname Security -InstanceId 4616 | export-clixml c:\results.xml #change in the system time

Get-EventLog -logname Security -InstanceId 521 | export-clixml c:\results.xml #unable to log events to security log

Get-EventLog -logname Security -InstanceId 4625 | export-clixml c:\results.xml #logon failure 

Get-EventLog -logname Security -InstanceId 5461 | export-clixml c:\results.xml #logon failure - user not granted the requested logon type at this machine

Get-EventLog -logname Security -InstanceId 4648 | export-clixml c:\results.xml #logon attempt with explicit credentials

Get-EventLog -logname Security -InstanceId 4672 | export-clixml c:\results.xml #special privilegs assigned to new logon

Get-EventLog -logname Security -InstanceId 4697 | export-clixml c:\results.xml #attempt to install service

Get-EventLog -logname Security -InstanceId 4697 | export-clixml c:\results.xml #scheduled task created

Get-EventLog -logname Security -InstanceId 4692 | export-clixml c:\results.xml #backup of data protection master key

Get-EventLog -logname Security -InstanceId 4704 | export-clixml c:\results.xml #user right assigned

Get-EventLog -logname Security -InstanceId 4705 | export-clixml c:\results.xml #user right removed

Get-EventLog -logname Security -InstanceId 4719 | export-clixml c:\results.xml #audit policy change

Get-EventLog -logname Security -InstanceId 4725 | export-clixml c:\results.xml #user account disabled

Get-EventLog -logname Security -InstanceId 4725 | export-clixml c:\results.xml #user account deleted

Get-EventLog -logname Security -InstanceId 4723 | export-clixml c:\results.xml #change password attempt

Get-EventLog -logname Security -InstanceId 4727 | export-clixml c:\results.xml #security enabled global group created

Get-EventLog -logname Security -InstanceId 4728 | export-clixml c:\results.xml #security enabled global group member added

Get-EventLog -logname Security -InstanceId 4729 | export-clixml c:\results.xml #security enabled global group member removed

Get-EventLog -logname Security -InstanceId 4730 | export-clixml c:\results.xml #security enabled global group deleted

Get-EventLog -logname Security -InstanceId 4731 | export-clixml c:\results.xml # security enabled local group created

Get-EventLog -logname Security -InstanceId 4732 | export-clixml c:\results.xml #security enabled local group member added

Get-EventLog -logname Security -InstanceId 4733 | export-clixml c:\results.xml # security enabled local group member removed

Get-EventLog -logname Security -InstanceId 4734 | export-clixml c:\results.xml # security enabled local group deleted

Get-EventLog -logname Security -InstanceId 4735 | export-clixml c:\results.xml #security enabled local group changed 

Get-EventLog -logname Security -InstanceId 4768 | export-clixml c:\results.xml #authentication ticket request failed

Get-EventLog -logname Security -InstanceId 4771 | export-clixml c:\results.xml #pre-autentication failed

Get-EventLog -logname Security -InstanceId 4772 | export-clixml c:\results.xml #authentication ticket granted

Get-EventLog -logname Security -InstanceId 4767 | export-clixml c:\results.xml #user account unlocked

Get-EventLog -logname Security -InstanceId 686 | export-clixml c:\results.xml #password of following user accessed

Get-EventLog -logname Security -InstanceId 686 | export-clixml c:\results.xml #service ticket request failed

Get-EventLog -logname Security -InstanceId 4775 | export-clixml c:\results.xml #The name could not be mapped for .. logon by ..

Get-EventLog -logname Security -InstanceId 4775 | export-clixml c:\results.xml #The logon to account: .. by .. from workstation .. failed

Get-EventLog -logname Security -InstanceId 4775 | export-clixml c:\results.xml #a security event source has attempted to register

Get-EventLog -logname Security -InstanceId 4775 | export-clixml c:\results.xml #a security event source has attempted to unregister

Get-EventLog -logname Security -InstanceId 4775 | export-clixml c:\results.xml #the following policy was active when the windows firewall started

Get-EventLog -logname Security -InstanceId 4945 | export-clixml c:\results.xml #an application was listed as an exception when the windows firewall started

Get-EventLog -logname Security -InstanceId 4946 | export-clixml c:\results.xml #a change has been made to the windows firewall application exception list - also ID 4947 and 4948

Get-EventLog -logname Security -InstanceId 4954 | export-clixml c:\results.xml #windows firewall group policy settings have been applied

Get-EventLog -logname Security -InstanceId 5154 | export-clixml c:\results.xml #windows firewall has detected an application listening for incoming traffic also ID 5155

Get-EventLog -logname Security -InstanceId 1100 | export-clixml c:\results.xml #The event logging service has shut down

Get-EventLog -logname Security -InstanceId 1101 | export-clixml c:\results.xml #audit events have been dropped by the transport

Get-EventLog -logname Security -InstanceId 1102 | export-clixml c:\results.xml # audit log cleared

Get-EventLog -logname Security -InstanceId 1104 | export-clixml c:\results.xml # security log is now full

Get-EventLog -logname Security -InstanceId 1105 | export-clixml c:\results.xml #event log automatic backup

Get-EventLog -logname Security -InstanceId 1108 | export-clixml c:\results.xml #event logging service encountered an error

Get-EventLog -logname Security -InstanceId 4610 | export-clixml c:\results.xml #an authentication package has been loaded by the local security authority

Get-EventLog -logname Security -InstanceId 4611 | export-clixml c:\results.xml #trusted logon process has been registered with local security authority

Get-EventLog -logname Security -InstanceId 4624 | export-clixml c:\results.xml #an account was successfully logged on

Get-EventLog -logname Security -InstanceId 4625 | export-clixml c:\results.xml #an account failed to log on

Get-EventLog -logname Security -InstanceId 4649 | export-clixml c:\results.xml #a reply attack was detected

Get-EventLog -logname Security -InstanceId 4650 | export-clixml c:\results.xml #an ipsec main mode security association was established

Get-EventLog -logname Security -InstanceId 4652 | export-clixml c:\results.xml #An IPsec Main Mode negotiation failed

Get-EventLog -logname Security -InstanceId 4652 | export-clixml c:\results.xml # An IPsec Main Mode negotiation failed

Get-EventLog -logname Security -InstanceId 4654 | export-clixml c:\results.xml #An IPsec Quick Mode negotiation failed

Get-EventLog -logname Security -InstanceId 4655 | export-clixml c:\results.xml #An IPsec Main Mode security association ended