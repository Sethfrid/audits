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

Get-EventLog -logname Security -InstanceId 4667 | export-clixml c:\results.xml #An application client context was deleted

Get-EventLog -logname Security -InstanceId 4672 | export-clixml c:\results.xml #Special privileges assigned to new logon

Get-EventLog -logname Security -InstanceId 4692 | export-clixml c:\results.xml #Backup of data protection master key was attempted

Get-EventLog -logname Security -InstanceId 4693 | export-clixml c:\results.xml #Recovery of data protection master key was attempted

Get-EventLog -logname Security -InstanceId 4694 | export-clixml c:\results.xml #Protection of auditable protected data was attempted

Get-EventLog -logname Security -InstanceId 4695 | export-clixml c:\results.xml #Unprotection of auditable protected data was attempted

Get-EventLog -logname Security -InstanceId 4698 | export-clixml c:\results.xml #A scheduled task was created

Get-EventLog -logname Security -InstanceId 4699 | export-clixml c:\results.xml #A scheduled task was deleted

Get-EventLog -logname Security -InstanceId 4700 | export-clixml c:\results.xml #A scheduled task was enabled

Get-EventLog -logname Security -InstanceId 4701 | export-clixml c:\results.xml #A scheduled task was disabled

Get-EventLog -logname Security -InstanceId 4704 | export-clixml c:\results.xml #A user right was assigned

Get-EventLog -logname Security -InstanceId 4705 | export-clixml c:\results.xml #A user right was removed

Get-EventLog -logname Security -InstanceId 4706 | export-clixml c:\results.xml #A new trust was created to a domain

Get-EventLog -logname Security -InstanceId 4707 | export-clixml c:\results.xml #A trust to a domain was removed

Get-EventLog -logname Security -InstanceId 4709 | export-clixml c:\results.xml #IPsec Services was started

Get-EventLog -logname Security -InstanceId 4710 | export-clixml c:\results.xml #IPsec Services was disabled

Get-EventLog -logname Security -InstanceId 4712 | export-clixml c:\results.xml #IPsec Services encountered a potentially serious failure

Get-EventLog -logname Security -InstanceId 4716 | export-clixml c:\results.xml #Trusted domain information was modified

Get-EventLog -logname Security -InstanceId 4717 | export-clixml c:\results.xml #System security access was granted to an account

Get-EventLog -logname Security -InstanceId 4718 | export-clixml c:\results.xml #System security access was removed from an account

Get-EventLog -logname Security -InstanceId 4720 | export-clixml c:\results.xml #A user account was created

Get-EventLog -logname Security -InstanceId 4722 | export-clixml c:\results.xml #A user account was enabled

Get-EventLog -logname Security -InstanceId 4723 | export-clixml c:\results.xml #An attempt was made to change an account's password

Get-EventLog -logname Security -InstanceId 4724 | export-clixml c:\results.xml #An attempt was made to reset an accounts password

Get-EventLog -logname Security -InstanceId 4725 | export-clixml c:\results.xml #A user account was disabled

Get-EventLog -logname Security -InstanceId 4726 | export-clixml c:\results.xml #A user account was deleted

Get-EventLog -logname Security -InstanceId 4727 | export-clixml c:\results.xml # A security-enabled global group was created

Get-EventLog -logname Security -InstanceId 4728 | export-clixml c:\results.xml #A member was added to a security-enabled global group

Get-EventLog -logname Security -InstanceId 4729 | export-clixml c:\results.xml #A member was removed from a security-enabled global group

Get-EventLog -logname Security -InstanceId 4730 | export-clixml c:\results.xml #A security-enabled global group was deleted

Get-EventLog -logname Security -InstanceId 4731 | export-clixml c:\results.xml #A security-enabled local group was created

Get-EventLog -logname Security -InstanceId 4732 | export-clixml c:\results.xml #A member was added to a security-enabled local group

Get-EventLog -logname Security -InstanceId 4733 | export-clixml c:\results.xml #A member was removed from a security-enabled local group

Get-EventLog -logname Security -InstanceId 4734 | export-clixml c:\results.xml #A security-enabled local group was deleted

Get-EventLog -logname Security -InstanceId 4735 | export-clixml c:\results.xml #A security-enabled local group was changed

Get-EventLog -logname Security -InstanceId 4737 | export-clixml c:\results.xml #A security-enabled global group was changed

Get-EventLog -logname Security -InstanceId 4738 | export-clixml c:\results.xml #A user account was changed

Get-EventLog -logname Security -InstanceId 4739 | export-clixml c:\results.xml #Domain Policy was changed

Get-EventLog -logname Security -InstanceId 4740 | export-clixml c:\results.xml #A user account was locked out

Get-EventLog -logname Security -InstanceId 4741 | export-clixml c:\results.xml #A computer account was created

Get-EventLog -logname Security -InstanceId 4742 | export-clixml c:\results.xml #A computer account was changed

Get-EventLog -logname Security -InstanceId 4743 | export-clixml c:\results.xml #A computer account was deleted

Get-EventLog -logname Security -InstanceId 4744 | export-clixml c:\results.xml #A security-disabled local group was created

Get-EventLog -logname Security -InstanceId 4745 | export-clixml c:\results.xml #A security-disabled local group was changed

Get-EventLog -logname Security -InstanceId 4746 | export-clixml c:\results.xml #A member was added to a security-disabled local group

Get-EventLog -logname Security -InstanceId 4747 | export-clixml c:\results.xml #A member was removed from a security-disabled local group

Get-EventLog -logname Security -InstanceId 4748 | export-clixml c:\results.xml #A security-disabled local group was deleted

Get-EventLog -logname Security -InstanceId 4749 | export-clixml c:\results.xml #A security-disabled global group was created

Get-EventLog -logname Security -InstanceId 4750 | export-clixml c:\results.xml #A security-disabled global group was changed

Get-EventLog -logname Security -InstanceId 4751 | export-clixml c:\results.xml #A member was added to a security-disabled global group

Get-EventLog -logname Security -InstanceId 4752 | export-clixml c:\results.xml #A member was removed from a security-disabled global group

Get-EventLog -logname Security -InstanceId 4753 | export-clixml c:\results.xml #A security-disabled global group was deleted

Get-EventLog -logname Security -InstanceId 4754 | export-clixml c:\results.xml #A security-enabled universal group was created

Get-EventLog -logname Security -InstanceId 4755 | export-clixml c:\results.xml #A security-enabled universal group was changed

Get-EventLog -logname Security -InstanceId 4756 | export-clixml c:\results.xml #A member was added to a security-enabled universal group

Get-EventLog -logname Security -InstanceId 4758 | export-clixml c:\results.xml #A member was removed from a security-enabled universal group

Get-EventLog -logname Security -InstanceId 4759 | export-clixml c:\results.xml #A security-disabled universal group was created

Get-EventLog -logname Security -InstanceId 4760 | export-clixml c:\results.xml #A security-disabled universal group was changed

Get-EventLog -logname Security -InstanceId 4761 | export-clixml c:\results.xml #A member was added to a security-disabled universal group

Get-EventLog -logname Security -InstanceId 4762 | export-clixml c:\results.xml #A member was removed from a security-disabled universal group

Get-EventLog -logname Security -InstanceId 4763 | export-clixml c:\results.xml #A security-disabled universal group was deleted

Get-EventLog -logname Security -InstanceId 4767 | export-clixml c:\results.xml #A user account was unlocked

Get-EventLog -logname Security -InstanceId 4774 | export-clixml c:\results.xml #An account was mapped for logon

Get-EventLog -logname Security -InstanceId 4775 | export-clixml c:\results.xml # An account could not be mapped for logon

Get-EventLog -logname Security -InstanceId 4781 | export-clixml c:\results.xml #The name of an account was changed

Get-EventLog -logname Security -InstanceId 4782 | export-clixml c:\results.xml #The password hash an account was accessed

Get-EventLog -logname Security -InstanceId 4794 | export-clixml c:\results.xml #An attempt was made to set the Directory Services Restore Mode administrator password

Get-EventLog -logname Security -InstanceId 4797 | export-clixml c:\results.xml #An attempt was made to query the existence of a blank password for an account

Get-EventLog -logname Security -InstanceId 4945 | export-clixml c:\results.xml #A rule was listed when the Windows Firewall started

Get-EventLog -logname Security -InstanceId 4946 | export-clixml c:\results.xml #A change has been made to Windows Firewall exception list. A rule was added

Get-EventLog -logname Security -InstanceId 4947 | export-clixml c:\results.xml #A change has been made to Windows Firewall exception list. A rule was modified
 
Get-EventLog -logname Security -InstanceId 4948 | export-clixml c:\results.xml #A change has been made to Windows Firewall exception list. A rule was deleted

Get-EventLog -logname Security -InstanceId 4949 | export-clixml c:\results.xml #Windows Firewall settings were restored to the default values

Get-EventLog -logname Security -InstanceId 4950 | export-clixml c:\results.xml #A Windows Firewall setting has changed

Get-EventLog -logname Security -InstanceId 4952 | export-clixml c:\results.xml #Parts of a rule have been ignored because its minor version number was not recognized by Windows Firewall

Get-EventLog -logname Security -InstanceId 4953 | export-clixml c:\results.xml #A rule has been ignored by Windows Firewall because it could not parse the rule

Get-EventLog -logname Security -InstanceId 4954 | export-clixml c:\results.xml #Windows Firewall Group Policy settings has changed. The new settings have been applied

Get-EventLog -logname Security -InstanceId 4956 | export-clixml c:\results.xml #Windows Firewall has changed the active profile

Get-EventLog -logname Security -InstanceId 5024 | export-clixml c:\results.xml #The Windows Firewall Service has started successfully

Get-EventLog -logname Security -InstanceId 5027 | export-clixml c:\results.xml #The Windows Firewall Service was unable to retrieve the security policy from the local storage

Get-EventLog -logname Security -InstanceId 5028 | export-clixml c:\results.xml #The Windows Firewall Service was unable to parse the new security policy.

Get-EventLog -logname Security -InstanceId 5029 | export-clixml c:\results.xml #The Windows Firewall Service failed to initialize the driver

Get-EventLog -logname Security -InstanceId 5030 | export-clixml c:\results.xml #The Windows Firewall Service failed to start

Get-EventLog -logname Security -InstanceId 5031 | export-clixml c:\results.xml #The Windows Firewall Service blocked an application from accepting incoming connections on the network.

Get-EventLog -logname Security -InstanceId 5032 | export-clixml c:\results.xml #Windows Firewall was unable to notify the user that it blocked an application from accepting incoming connections on the network

Get-EventLog -logname Security -InstanceId 5033 | export-clixml c:\results.xml #The Windows Firewall Driver has started successfully

Get-EventLog -logname Security -InstanceId 5034 | export-clixml c:\results.xml #The Windows Firewall Driver has been stopped

Get-EventLog -logname Security -InstanceId 5035 | export-clixml c:\results.xml #The Windows Firewall Driver failed to start

Get-EventLog -logname Security -InstanceId 5037 | export-clixml c:\results.xml #The Windows Firewall Driver detected critical runtime error. Terminating

